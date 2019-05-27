class MiniblogsController < ApplicationController
    def index
    end

    def new
        @miniblog=Miniblog.new
    end

    def create
        Miniblog.create(params.require(:miniblog).permit(:content))
        redirect_to new_miniblog_path
    end
end
