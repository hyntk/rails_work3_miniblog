class MiniblogsController < ApplicationController
    def index
        @miniblogs=Miniblog.all
    end

    def new
        @miniblog=Miniblog.new
    end

    def create
        Miniblog.create(params.require(:miniblog).permit(:content))
        redirect_to new_miniblog_path
    end

    def edit
        @miniblog=Minilog.find(params[:id])
    end
end
