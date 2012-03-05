class DailySchedule
  include MongoMapper::Document

  # key <name>, <type>
  key :meeting_1, String
  key :meeting_2, String
  
  timestamps!
end
