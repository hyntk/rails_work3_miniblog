class MiniblogsController < ApplicationController
    def index
        @miniblogs=Miniblog.all
    end

    def new
        @miniblog=Miniblog.new
    end

    def create
        @miniblog=Miniblog.new(miniblog_params)
        if @miniblog.save
        redirect_to miniblogs_path,notice:"ミニブログを作成しました！"
        else
            render'new'
        end
    end

    def edit
        @miniblog=Miniblog.find(params[:id])
    end

    def update
        @miniblog = Miniblog.find(params[:id])
        if @miniblog.update(miniblog_params)
        redirect_to miniblogs_path, notice: "ミニブログを編集しました！"
        else
        render 'edit'
        end
    end

    private

    def miniblog_params
        params.require(:miniblog).permit(:content)
    end
end
