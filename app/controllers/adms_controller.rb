class AdmsController < ApplicationController
  # GET /adms
  # GET /adms.json
  def index
    @adms = Adm.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @adms }
    end
  end

  # GET /adms/1
  # GET /adms/1.json
  def show
    @adm = Adm.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @adm }
    end
  end

  # GET /adms/new
  # GET /adms/new.json
  def new
    @adm = Adm.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @adm }
    end
  end

  # GET /adms/1/edit
  def edit
    @adm = Adm.find(params[:id])
  end

  # POST /adms
  # POST /adms.json
  def create
    @adm = Adm.new(params[:adm])

    respond_to do |format|
      if @adm.save
        format.html { redirect_to @adm, notice: 'Adm was successfully created.' }
        format.json { render json: @adm, status: :created, location: @adm }
      else
        format.html { render action: "new" }
        format.json { render json: @adm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /adms/1
  # PUT /adms/1.json
  def update
    @adm = Adm.find(params[:id])

    respond_to do |format|
      if @adm.update_attributes(params[:adm])
        format.html { redirect_to @adm, notice: 'Adm was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @adm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adms/1
  # DELETE /adms/1.json
  def destroy
    @adm = Adm.find(params[:id])
    @adm.destroy

    respond_to do |format|
      format.html { redirect_to adms_url }
      format.json { head :no_content }
    end
  end
end
