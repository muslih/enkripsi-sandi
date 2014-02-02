require 'rubygems'
require 'data_mapper'
require 'dm-sqlite-adapter'
require 'bcrypt'

DataMapper.setup(:default, "sqlite://#{Dir.pwd}/db.sqlite")

class User
	include DataMapper::Resource
	include BCrypt

	property :id, Serial, :key => true
	property :nama, String, :length => 3..30
	property :sandi, BCryptHash
end

DataMapper.finalize
DataMapper.auto_upgrade!
