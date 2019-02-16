class UploadsController < ApplicationController
  def index
    @uploads = Upload.all
  end

  def new
    @upload = Upload.new
  end

  def create
    @upload = Upload.new(upload_params)

    @upload.name = ActiveStorage::Blob.last.filename

    respond_to do |format|
      if @upload.save
        format.html { redirect_to uploads_path, notice: 'File uploaded' }
        format.json { render :show, status: :created, location: @upload }
      else
        format.html { render :new }
        format.json { render json: @upload.errors, status: :unprocessable_entity }
      end
    end
  end
  
  # def upload
  #   uploaded_io = upload_params
  #   puts uploaded_io
  #   File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
  #     file.write(uploaded_io.read)
  #   end
  #   @upload = Upload.new(upload_params)
  #   @upload.save

  #   redirect_to @upload
  # end

  private
    def upload_params
      params.require(:upload).permit(:name, files: [])
    end
end

