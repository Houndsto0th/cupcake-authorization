class CupcakesController < ApplicationController
  def bakery
    @cupcake = Cupcake.all
  end

  def bake #registration new
    @cupcake = Cupcake.new
  end

  def display #registration create
    @cupcake = Cupcake.new(cupcake_ingredients)
    if @cupcake.save
      session[:id] = @cupcake.id
      redirect_to root_path
    else
      render :bake
    end
  end

  def rebake #authentication new (sign in)
    @cupcake = Cupcake.new
  end

  def another_batch #authentication create (sign in)
    cupcake = Cupcake.find_by_email(params[:email])
    if cupcake && cupcake.authenticate(params[:password])
      session[:id] = cupcake.id
      redirect_to root_path
    else
      @sign_in_error = "Username / password combination is invalid"
      render :rebake
    end
  end

  def eat #authentication destroy (sign out)
    session.clear
    redirect_to root_path
  end

  private

    def cupcake_ingredients
      params.require(:cupcake).permit(:username, :email, :password, :password_confirmation)
    end


end
