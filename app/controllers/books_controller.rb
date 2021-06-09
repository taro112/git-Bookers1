class BooksController < ApplicationController
  def index
    @book =Book.new
     @books =Book.all
    
    
     
  end

  def show
    @book = Book.find(params[:id])
    
  end

  def new
    @books = Book.all
     
      
  end
  
   def create
      @book = Book.new(books_params)
    
      if @book.save
        redirect_to book_path(@book.id)
        
        flash[:notice] = "Book was successfully created."
      
      else
        @books=Book.all
        render action: :index
      end
   end
   
  

  def edit
    @book = Book.find(params[:id])
    
  end
  
  def update
    book = Book.find(params[:id])
    
    if book.update(books_params)
        
      redirect_to book_path(book)
        
      flash[:notice] = "Book was successfully created."
      
    else
        @books=Book.all
        @book=book
        render action: :edit
        
    end
   
   
  end
  
  def destroy
    book = Book.find(params[:id])
    if book.destroy
            
    else
            render :index
        
    end
    flash[:notice] = "Book was successfully delete."
    redirect_to books_path
  end
  
  private
  def books_params
    params.require(:book).permit(:title,:body)
  end
end
