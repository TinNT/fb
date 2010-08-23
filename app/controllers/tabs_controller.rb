class TabsController < ApplicationController
  # GET /tabs
  # GET /tabs.xml
  layout false
  
  def index
    @tabs = Tab.all

    respond_to do |format|
      format.html # index.html.erb
      format.fbml
    end
  end

  # GET /tabs/1
  # GET /tabs/1.xml
  def show
    @tab = Tab.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.fbml
    end
  end

  # GET /tabs/new
  # GET /tabs/new.xml
  def new
    @tab = Tab.new

    respond_to do |format|
      format.html # new.html.erb
      format.fbml
    end
  end

  # GET /tabs/1/edit
  def edit
    @tab = Tab.find(params[:id])
  end

  # POST /tabs
  # POST /tabs.xml
  def create
    @tab = Tab.new(params[:tab])

    respond_to do |format|
      if @tab.save
        flash[:notice] = 'Tab was successfully created.'
        format.fbml { redirect_to(@tab) }
      else
        format.fbml { render :action => "new" }
      end
    end
  end

  # PUT /tabs/1
  # PUT /tabs/1.xml
  def update
    @tab = Tab.find(params[:id])

    respond_to do |format|
      if @tab.update_attributes(params[:tab])
        flash[:notice] = 'Tab was successfully updated.'
        format.fbml { redirect_to(@tab) }
      else
        format.fbml { render :action => "edit" }
      end
    end
  end
  
  def fbml
    respond_to do |format|
      format.fbml
    end
  end

  # DELETE /tabs/1
  # DELETE /tabs/1.xml
  def destroy
    @tab = Tab.find(params[:id])
    @tab.destroy

    respond_to do |format| 
      format.fbml { redirect_to(tabs_url) }
    end
  end
end
