class TeamsController < ApplicationController

  def new
    @team = Team.new
    @team.users << current_user
  end

  def create
    @team = Team.new(team_params)
    if @team.save
      redirect_to root_path, notice: 'グループを作成しました'
    else
      render :new
    end
  end
  
  def edit
    
  end
  
  def show
    
  end


  private

  def team_params
    params.require(:team).permit(:name, :user_id [])
  end
end

