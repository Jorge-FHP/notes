class NotesController < ApplicationController
  def index

  end

  def create
    note = Note.create(note_params)
    render json: note, status: :created
  end

  def note_params
    params.require(:note).permit(:title, :content)
  end

end
