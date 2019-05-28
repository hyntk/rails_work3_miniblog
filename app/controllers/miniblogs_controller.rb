class MiniblogsController < ApplicationController
    before_action :set_miniblog,only: [:edit, :update,:destroy]

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
    end

    def update
        if @miniblog.update(miniblog_params)
        redirect_to miniblogs_path, notice: "ミニブログを編集しました！"
        else
        render 'edit'
        end
    end

    def destroy
        @miniblog.destroy
        redirect_to miniblogs_path, notice:"ミニブログを削除しました！"
    end

    def confirm
        @miniblog=Miniblog.new(miniblog_params)
    end

    private

    def miniblog_params
        params.require(:miniblog).permit(:content)
    end

    def set_miniblog
        @miniblog=Miniblog.find(params[:id])
    end
end
