class LibrariesController < ApplicationController
    def show
        @library = Library.find_by(id: params[:id])
    end
    
    def destroy
        @library = Library.find_by(id: params[:id])
        @library.destroy(params[:id])
        redirect_to root_path
    end
    
    def edit
        @library = Library.find_by(id: params[:id])
    end
    
    def update
        @library = Library.find_by(id: params[:id])
        if @library.update library_params
            redirect_to libraries_path
        else
            render :edit
        end
    end

    def index
        @libraries = Library.all 
    end

    def new
        @library = Library.new
    end

    def create
        @library = Library.new library_params
        if @library.save
            redirect_to libraries_path
        else
            render :new
        end
    end

    private 

    def library_params
        params.require(:library).permit(:libraryname, :author, :bookname, :genre, :readers_card, :user)
    end
end