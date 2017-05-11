# #
# #
# #

# def method_name
#   # setup

#   # run

#   # compare
#   if
#     print "Pass test" + "\n"
#   else
#     print "Fail test" + "\n"
#   end
# end

require_relative "functions_test.rb"
require 'csv'
require 'pry'

###  AccountInfo

# set_up_initial_values: should set up two predifined instance variables
#
# should be zero once run
def test_set_up_intitial_values() 
  # setup
    testicount = AccountInfo.new

  # run
    testicount.set_up_initial_values

  # compare
    if testicount.categories == {} && testicount.pretty_tally == 0.00
      print "Pass test set_up_initial_values" + "\n"
    else
      print "Fail test set_up_initial_values" + "\n"
    end
end

# update_tally: should add the inputed number to the current tally total
# 
# should produce same value as was imput

def test_update_tally()
  # setup
    testicount = AccountInfo.new
    testicount.set_up_initial_values
    random = Random.rand(10).to_f

  # run
    testicount.update_tally(random)

  # compare
    if testicount.pretty_tally == random
      print "Pass test update_tally" + "\n"
    else
      print "Fail test update_tally" + "\n"
  end   
end

# set_up_initial_values: should create a new category named with the 
#string that was given
#
# should return ralf

def test_set_up_intial_values
  # setup
    testicount = AccountInfo.new
    testicount.set_up_initial_values

  # run
    testicount.add_category("ralf")
  # compare
  if testicount.categories.each_key{|key| puts key} == ralf
    print "pass test set_up_initial_values" + "\n"
  else
    print "fail test set_up_initial_values" + "\n"
  end
end

# already_has_category: should check to see if given category exists within the 
# AccountInfo object
#
#

def test_already_has_category
  # setup
    testicount = AccountInfo.new
    testicount.set_up_initial_values
    testicount.add_category("ralf")

  # run/compare 
  if testicount.already_has_category("ralf") == true
    print "Pass test already_has_category" + "\n"
  else
    print "Fail test already_has_category" + "\n"
  end
end

# test_category asks for a category name and should return that category
#
# 

# def test_category
#   # setup
#     testicount = AccountInfo.new
#     testicount.set_up_initial_values
#     testicount.add_category("ralf")
#     long_identifier = testicount.to_s
#   # run/compare
#   if testicount.category("ralf") == long_identifier +@category
#     print "Pass test test_category" + "\n"
#   else
#     print "Fail test test_category" + "\n"
#   end
# end

### Category

# set_up_initial_values adds three instance variables to the a new Category class object
#
#should return three zerod out instance variables 

def test_set_up_initial_values_category
  # setup
    testigory = Category.new

  # run
    testigory.set_up_initial_values

  # compare
  if testigory.tally_number == 0.00 && testigory.avg_transaction == 0
    print "Pass test set_up_initial_values_category" + "\n"
  else
    print "Fail test set_up_initial_values_category" + "\n"
  end
end

#found a wierd bug with set_up_initial_values, when applied it returns a zero value float.
#when applied on like so: Category.new.set_up_initial_values the zero is permenant.

# add_transaction takes in an ammount, adds the ammount to the tally instance variable,
# adds one to num_transaction instance variable, and devides tally by num_transaction, 
# then updates the average_transaction_cost instance variable
#
# should return 1.00 1 and 1.oo when given and ammount equalling 1

def test_add_transactions
  # setup
  testigory = Category.new
  testigory.set_up_initial_values

  # run
    testigory.add_transaction(1.00)
  # compare
  if testigory.tally_number == 1.00 && testigory.avg_transaction == 1.00
    print "Pass test add_transaction" + "\n"
  else
    print "Fail test add_transaction" + "\n"
  end
end


### Outflow

# set_value takes in an ammount, cleans it up, and rounds it to the second place
#
# given a jankety number it should return a clean one

def test_set_value
  # setup
    testiflow = Outflow.new

  # run
    testiflow.set_value("$32,2012.138875")
  # compare
  if
    testiflow.to_f == 322012.14
    print "Pass test set_value" + "\n"
  else
    print "Fail test set_value" + "\n"
  end
end

### Inflow

# set_value: same as set_value in Outflow
#
# same as set_value above

def test_set_value_in

  # setup
    testiflow = Inflow.new

  # run
    testiflow.set_value("$73,132415.1341341")
  # compare
  if testiflow.to_f == 73132415.13
    print "Pass test set_value_in" + "\n"
  else
    print "Fail test set_value_in" + "\n"
  end
end

test_set_up_intitial_values()
test_update_tally()
test_set_up_intitial_values()
test_already_has_category()
# test_category()
test_set_up_initial_values_category()
test_add_transactions()
test_set_value()
test_set_value_in()