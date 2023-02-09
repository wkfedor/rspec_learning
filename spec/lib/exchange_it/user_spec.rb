# frozen_string_literal: true
RSpec.describe ExchangeIt::User do
  let(:user){described_class.new 'Feda', 'Ivanov'}
  let(:user_no_name){described_class.new nil, 'Ivanov'}

  it 'Вернет имя' do
    expect(user.name).to eq('Feda')
    expect(user.name).to be_an_instance_of(String)
  end

  it 'тип имени должен быть строка, но сработает с ошибкой, создание класса в нутри теста' do
    user = ExchangeIt::User.new 'иван', nil
    expect(user.surname).to be_an_instance_of(String)
  end

  it 'Вернет имя для безымянного' do
     expect(user_no_name.name).to be_an_instance_of(String)     # тип возращаемого значения
  end


  it 'Вернет фамилию' do
    expect(user.surname).to eq('Ivanov')
  end

  it 'Проверка на класс аккаунт' do
    expect(user.account).to be_an_instance_of(ExchangeIt::Account)
  end

end
