class TagsController < ApplicationController
    def show
        @tag = Tags.find(params[:id])
    end

    def index
        @tags = Tag.all.order('name ASC')
    end

    def destroy
        @tag = Tag.find(params[:id])
        @tag.destroy
    
        flash.notice = "Tag '#{@tag.name}' deleted!"
    
        redirect_to tags_path
    end    


end
