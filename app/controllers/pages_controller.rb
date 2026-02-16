class PagesController < ApplicationController
  def about
    # by default renders about.html.erb in the views folder (pages folder) - same name
    # every action (get) will have it's own view
  end

  def contacts
    # raise
    # @members = Member.all
    @members = ["Noemi", "Doug", "Sasha", "Sylvain", "Gary", "Celso"]

    if params[:member]
      @members = @members.select {|member| member.downcase.start_with?(params[:member].downcase)}
    end
  end

  def home

  end
end
