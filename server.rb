require 'sinatra'
require 'erb'
#this is dedicated to Spencer, great EE who show us the power of pry!
require 'pry'
#Uncomment this line to use 'pg' to connect to your DB
#require 'pg'

#############
# FUNCTIONS #
#############

#connection to your database using postgreSQL
#def db_connection
#  begin
#    connection = PG.connect(dbname: "<database name>")
#    yield(connection)
#  ensure
#    connection.close
#  end
#end

#request the data from your table
#def get_data
#  <your variable> = db_connection do |conn|
#    conn.exec("SELECT <rows names> FROM <table name>")
#  end
#end

###############
# CONTROLLERS #
###############

get '/' do
  redirect '/home'
end

get '/home' do
  erb :home
end
