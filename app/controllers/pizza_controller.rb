class PizzaController < ApplicationController
    def index
        @pizzas = Pizza.all
    end
    def new
        @pizza = Pizza.new
    end
    def create
        @pizza = Pizza.new(pizza_params)
        if @pizza.save
            redirect_to root_path
        else
            redirect_to pizza_new_path
        end
    end
    def edit
        @pizza = Pizza.find_by(id: params[:id])
    end
    def update
        @pizza = Pizza.find_by(id: params[:id])
        @pizza.update(pizza_params)
        if @pizza.save
            redirect_to root_path
        end
    end
    def destroy
        @pizza = Pizza.find_by(id: params[:id])
        if @pizza.present?
            @pizza.destroy
            redirect_to root_path
        end
    end
    private def pizza_params
        params.permit(:name, :rate)
    end
end