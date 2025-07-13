class NotesController < ApplicationController
  before_action :set_note, only: [:show, :edit, :update, :destroy]

  def index
    @notes = Note.all 
  end

  def show
    set_note
  end

  def new
    @note = Note.new
  end

  def create
    @note = Note.new(note_params) 
    
    if @note.save
      redirect_to @note
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def edit
    set_note
  end

  def update
    set_note
    
    if @note.update(note_params)
      redirect_to @note
    else
      render 'edit', status: :unprocessable_entity
    end
  end

  def destroy
    set_note
    @note.delete

    redirect_to notes_url
  end

  private
  def note_params
    params.required(:note).permit(:name, :body)
  end

  def set_note
    @note = Note.find(params[:id])
  end

end