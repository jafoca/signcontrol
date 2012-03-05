MongoMapper.connection = Mongo::Connection.new('localhost', nil, :logger => logger)

case Padrino.env
  when :development then MongoMapper.database = 'signcontrol_development'
  when :production  then MongoMapper.database = 'signcontrol_production'
  when :test        then MongoMapper.database = 'signcontrol_test'
end
