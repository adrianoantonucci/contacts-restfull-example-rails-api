namespace :dev do
  desc "Configurar ambiente de desenvolvimento"
  task setup: :environment do
    100.times do |i|
      Contact.create!(
        name: Faker::Name.name,
        email:Faker::Internet.email,
        birthdate: Faker::Date.between(50.years.ago, 20.years.ago)
      )
    end 
  end

end
