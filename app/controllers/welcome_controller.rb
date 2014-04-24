class WelcomeController < ApplicationController
  def index
    @ponies = Pony.all
  end

  def alicorns
    @ponies = Pony.find(:all, :conditions => ["kind = ?", "Alicorn"])
    render :index
  end

  def unicorns
    @ponies = Pony.find(:all, :conditions => ["kind = ?", "Unicorn"])
    render :index
  end

  def ponies
    @ponies = Pony.find(:all, :conditions => ["kind = ?", "Pony"])
    render :index
  end

  def pegasi
    @ponies = Pony.find(:all, :conditions => ["kind = ?", "Pegasus"])
    render :index
  end

  def dragons
    @ponies = Pony.find(:all, :conditions => ["kind = ?", "Dragon"])
    render :index
  end

  def zebras
    @ponies = Pony.find(:all, :conditions => ["kind = ?", "Zebra"])
    render :index
  end
end
