class PostMailer < ApplicationMailer
  def notify(post)
    @post = post
    mail to: 'example@example.com', subject: default_i18n_subject(title: @post.title)
  end
end