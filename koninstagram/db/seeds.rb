#coding:utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Factory.create(:name => '松江',:address =>'島根県松江市八雲町東岩坂1754',:phone => '0852-54-1745')
Factory.create(:name => '浜田',:address =>'島根県浜田市三隅町古市場957-4',:phone => '0855-32-4170')

User.create(:name => '松江太郎')
User.create(:name => '松江二郎')
User.create(:name => '松江花小')
User.create(:name => '松江三郎')
User.create(:name => '松江健太')
User.create(:name => '松江小次郎')

Color.create(name: 'red')
Color.create(name: 'white')
Color.create(name: 'blue')

Material.create(name: 'kouzo')
Material.create(name: 'ganpi')
Material.create(name: 'mitumatagami')

Waku.create(name: 'kiriotoshi')
Waku.create(name: 'sonomamaiji')

