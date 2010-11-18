class NotesController < ApplicationController

  def index
	@notes = Note.all

	respond_to do |format|
	  format.html # index.html.erb
	  format.xml  { render :xml => @notes }
	end
  end

  def new
	@note = Note.new

	respond_to do |format|
	  format.html # new.html.erb
	  format.xml  { render :xml => @note }
	end
  end
  
  def create
	@note = Note.new(params[:note])
	@note = Note.create( params[:note] )
	
	respond_to do |format|
	  if @note.save
		format.html { redirect_to(@note, :notice => 'Region was successfully created.') }
		format.xml  { render :xml => @note, :status => :created, :location => @note }
	  else
		format.html { render :action => "new" }
		format.xml  { render :xml => @note.errors, :status => :unprocessable_entity }
	  end
	end
end
  
  def show
	@note = Note.find(params[:id])

	respond_to do |format|
	  format.html # show.html.erb
	  format.xml  { render :xml => @note }
	end
  end
  
  def edit
	@note = Note.find(params[:id])
  end
  
  def update
	@note = Note.find(params[:id])

	respond_to do |format|
	  if @note.update_attributes(params[:note])
		format.html { redirect_to(@note, :notice => 'Region was successfully updated.') }
		format.xml  { head :ok }
	  else
		format.html { render :action => "edit" }
		format.xml  { render :xml => @note.errors, :status => :unprocessable_entity }
	  end
	end
  end

  def destroy
	@note = Note.find(params[:id])
	@note.destroy

	respond_to do |format|
	  format.html { redirect_to(notes_url) }
	  format.xml  { head :ok }
	end
  end
end