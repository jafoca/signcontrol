MongoMapper.connection = Mongo::Connection.new('staff.mongohq.com', 10018, :logger => logger)

case Padrino.env
  when :development then
    MongoMapper.database = 'app3138678'
    MongoMapper.database.authenticate('dev','gillespiegroup')

  when :production  then
    MongoMapper.database = 'app3138678'
    MongoMapper.database.authenticate('heroku','snuznuzz120')

  when :test        then MongoMapper.database = 'signcontrol_test'
end
