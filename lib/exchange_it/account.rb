module ExchangeIt
  class Account
    attr_reader :uid, :balance
    include ExchangeIt::Utils::Uid
    def initialize(user)
      @uid = hash user.name, user.surname
      @balance = 0
    end

  end
end