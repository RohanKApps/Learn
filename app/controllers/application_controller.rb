class ApplicationController < ActionController::Base
  
  def show
    @man = Person.find_by_id(params['id'])
    render 'show'
  end
  
  def display
    if @man.id == 1
      @image = "http://www.brainpickings.org/wp-content/uploads/2012/05/sagan1.jpg"
    end
    if @man.id == 2
      @image = "http://www.sciencefriday.com/images/cached/IMAGE/photo/000/000/012/12738-v1-490x.JPG"
    end
    if @man.id == 3
      @image = "https://pbs.twimg.com/profile_images/74188698/NeilTysonOriginsA-Crop_400x400.jpg"
    end
    render 'picture'
  end
  
  
  protect_from_forgery with: :exception
end
