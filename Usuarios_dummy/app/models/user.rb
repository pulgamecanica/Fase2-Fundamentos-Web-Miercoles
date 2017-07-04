class User < ActiveRecord::Base
    # ej. User.authenticate('fernando@codea.mx', 'qwerty')
  validates :name, presence: true
  validates :password, presence: true
  validates :email, presence: true
  validates :email, format: { with: /(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?/, message: "formato de URL incorrecto" }
  
  def self.authenticate(email, password)

    # si el email y el password corresponden a un usuario valido, regresa el usuario
    # de otra manera regresa nil
  end

end