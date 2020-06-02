class NotesController < ApplicationController

    def index
        notes = Note.all
        render json: notes
    end

    def show
        note = Note.find_by(id: params[:id])
        render json: note
    end

    def create 
        note = Note.create(user_id: params[:user_id], title: params[:title], content: params[:content])
        render json: note
    end

    def update
        note = Note.find(params[:id])
        note.update(note_params.permit(:title, :content))
        puts note_params
        if note_params[:tags] 
            tags = note_params[:tags]
            createNoteTags(tags, params[:id])
        end
        note.save
        puts json: note
        render json: note
    end

    def destroy
        note = Note.find(params[:id])
        note.destroy
        render json: note
    end

    def createNoteTags(tags, id) 
        if tags.length >0 
            tags.each {|tag| 
                thistag = Tag.find_or_create_by(content: tag)
                NoteTag.create(tag_id: thistag.id, note_id: id)
            }
        end
    end

    
    private

    def note_params
        params.require(:note).permit(:title, :content, tags: [])
    end

end
