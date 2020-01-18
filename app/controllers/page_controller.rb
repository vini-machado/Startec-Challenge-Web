class PageController < ApplicationController
    def main
        unless params[:name].nil?
            puts params[:name]
        end
    end
end
