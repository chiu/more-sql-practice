require 'pg'
require 'dotenv'
Dotenv.load


 
# Establish a connection to the database (requires internet since it's on heroku!)
# Note: You'll want to put in your own heroku creds
puts "establishing connection ..."
conn = PG.connect(
  dbname: 'd4lfgcngnjj6qk',
  port: 5432,
  user: 'uzetzlnafurulo',
  host: 'ec2-50-19-233-111.compute-1.amazonaws.com',
  password: 'UvzjPI-0szM4ApNuy3KVTU7ijU'
 
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