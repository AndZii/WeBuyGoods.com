class Email < ActiveRecord::Base

  validates :email, email_format: { message: "doesn't look like an email address" }

end
