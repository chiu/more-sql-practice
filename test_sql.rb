require 'pg'
 
# Establish a connection to the database (requires internet since it's on heroku!)
# Note: You'll want to put in your own heroku creds
puts "establishing connection ..."
conn = PG.connect(
  dbname: 'd9d6t4p3pbo9lb',
  port: 5432,
  user: 'lecbmjglnnxqbl',
  host: 'ec2-23-23-244-144.compute-1.amazonaws.com',
  password: 'xxx'
 
)
 
# Output all author records from the authors table
puts "getting authors ..."
conn.exec( "SELECT * FROM authors" ) do |results|
  # results is a collection (array) of records (hashes)... Nice!
  results.each do |author|
    puts author.inspect
  end
end
 
puts "Closing the db connection..."
conn.close
 
puts "DONE"