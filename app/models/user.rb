class User < ApplicationRecord
  has_secure_password
  after_destroy :ensure_an_admin_remains
  class Error < StandardError
  end

  validates :password, presence: true, length: { minimum: 6 }, confirmation: true
  def check_current_password(current_password)
    return if authenticate(current_password)

    raise Error, 'Current password is not correct'
  end

  private

  def ensure_an_admin_remains
    return unless User.count.zero?

    raise Error, "Can't delete last user"
  end
end
