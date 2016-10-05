class VendorsController < ApplicationController
  def index
    @vendors = Vendor.all
  end

  def show
    find
  end

  def new
    @vendor = Vendor.new
  end

  def create
    @vendor = Vendor.new

    @vendor.name = params[:vendor][:name]
    @vendor.description = params[:vendor][:description]
    @vendor.num_of_employees = params[:vendor][:num_of_employees]
    @vendor.market_id = params[:vendor][:market_id]

    @vendor.save
  end

  def edit
    find
  end

  def update
    find

    @vendor.name = params[:vendor][:name]
    @vendor.description = params[:vendor][:description]
    @vendor.num_of_employees = params[:vendor][:num_of_employees]
    @vendor.market_id = params[:vendor][:market_id]

    @vendor.save
  end

  def destroy
    find

    @vendor.destroy
  end

  private
  def find
    @vendor = Vendor.find(params[:id].to_i)
  end
end
