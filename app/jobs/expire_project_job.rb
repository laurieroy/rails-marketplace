class ExpireProjectJob < ApplicationJob
  queue_as :default

  def perform(*args)
    @project = project
    return if project_already_inactive?

    @project.status = "inactive"
    @project.save!
    # change now to later
    UserMailer.with(project: @project).project_expired_notice.deliver_now
  end

  private
  def project_already_inactive?
    @project.status == "inactive"
  end
end
