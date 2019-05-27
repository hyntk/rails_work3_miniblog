class MiniblogsController < ApplicationController
    def index
        @miniblogs=Miniblog.all
    end

    def new
        @miniblog=Miniblog.new
    end

    def create
        Miniblog.create(miniblog_params)
        redirect_to miniblogs_path,notice:"ミニブログを作成しました！"
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
