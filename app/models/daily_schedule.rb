class DailySchedule
  include MongoMapper::Document

  
  # key <name>, <type>
  key :date, String, :unique => true
  
  key :m1t, String
  key :m1d1, String
  key :m1d2, String
  
  key :m2t, String
  key :m2d1, String
  key :m2d2, String
  
  key :m3t, String
  key :m3d1, String
  key :m3d2, String
  
  key :m4t, String
  key :m4d1, String
  key :m4d2, String
  
  key :m5t, String
  key :m5d1, String
  key :m5d2, String
  
  key :m6t, String
  key :m6d1, String
  key :m6d2, String
  
  timestamps!
  
  validates_format_of :date, :with => /^\d{4}\-\d{2}\-\d{2}$/
end
