class User < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  after_destroy :ensure_an_admin_remains
  has_secure_password

  private
    def ensure_an_admin_remains
      if User.count.zero?
        raise "You're trying to delete the last user.  Impossible!"
      end
    end
end
