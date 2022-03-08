class NotesController < ApplicationController
  before_action :set_note, only: [:show, :edit, :update, :destroy]

  def index
    @notes = Note.ordered
  end

  def show
  end

  def new
    @note = Note.new
  end

  def create
    @note = Note.new(note_params)

    if @note.save
      respond_to do |format|
        format.html { redirect_to notes_path, notice: "Your note was created successfully." }
        format.turbo_stream
      end
    else
      render :new
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

    respond_to do |format|
      format.html { redirect_to notes_path notice: "Your note was deleted successfully." }
      format.turbo_stream
    end
  end

  private

  def set_note
    @note = Note.find(params[:id])
  end

  def note_params
    params.require(:note).permit(:name)
  end  
end
