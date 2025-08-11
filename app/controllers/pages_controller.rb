class PagesController < ApplicationController
  def about
    # by default it renders the about.html.erb inside the views/pages
    # 
  end

  def contact
    @members = ["sylvain", "doug", "sasha", "noemi", "celso", "gary"]
    # /contact?member=noemi
    # raise # this stops rails and gives me an error page with a console
    if params[:member]
      @members = @members.select {|member| member.start_with?(params[:member])}
    end
  end

  def home
  end
end
