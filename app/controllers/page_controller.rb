class PageController < ApplicationController
    def main
        puts params[:name]
    end
end
