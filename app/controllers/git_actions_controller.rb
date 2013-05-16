class GitActionsController < ApplicationController
  before_filter :load_project

  def index
    @git_actions = @project.repo.git_actions.where('id > ?', params[:before].to_i)
  end

private
  def load_project
    @project = current_user.projects.find(params[:project_id])
  end
end