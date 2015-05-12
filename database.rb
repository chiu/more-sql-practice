require 'pg'
 
# Establish a connection to the database (requires internet since it's on heroku!)
# Note: You'll want to put in your own heroku creds
puts "establishing connection ..."
conn = PG.connect(
  dbname: 'deke8mdrc8d16s',
  port: 5432,
  user: 'hfhlgqbycltqtb',
  host: 'ec2-107-22-187-89.compute-1.amazonaws.com',
  password: 'XF2HEwHuF3JDJYwt85BxMzoAr6'
 
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