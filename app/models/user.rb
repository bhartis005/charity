class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  validate :password_complexity
  

  def password_complexity
    if password.present? and not password.match( /\A(?=.{8,})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[[:^alnum:]])/x )
      errors.add :password, "must include at least one lowercase letter, one uppercase letter, one digit and one special character"
    end
  end
end
