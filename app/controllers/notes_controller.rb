class NotesController < ApplicationController
  before_action :set_note, only: [:show, :edit, :update, :destroy]

  def index
    @notes = Note.all
  end

  def show
  end

  def new
    @note = Note.new
  end

  def create
    @note = Note.new(note_params)

    if @note.save
      redirect_to notes_path, notice: "Your note was created successfully."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @note.update(note_params)
      redirect_to notes_path, notice: "Your note was updated successfully."
    else
      render :edit, status: :unprocessable_entity 
    end
  end

  def destroy
    @note.destroy
    redirect_to notes_path, notice: "Your note was deleted successfully."
  end

  private

  def set_note
    @note = Note.find(params[:id])
  end

  def note_params
    params.require(:note).permit(:name)
  end  
end
