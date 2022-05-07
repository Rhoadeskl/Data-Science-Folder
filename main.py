from re import A

my_message = "Hello"
my_other_message = "how are you?"

#concatenate the above variables with a comma in between

my_final_message = my_message + "," + my_other_message
print(my_final_message)

day = "1"
year = "2017"
month = "August"
today_is = month + " " + day + ", " + year
print(today_is)

day = 1 
year = 2017
month = "August"

today_is2 = month + "" + str(day) + "," + str(year)
today_is3 = str.format("The date is {} {}, {}", month, day, year)
print(today_is3)
today_is3 = str.format("The date is {}, {} {}", year, month, day)
print(today_is3)

my_message1 = "THESE ARE ALL CAPS"
print(my_message1.lower())
print(my_message1.upper())

experience = "this game is fun"
better_experience = experience.replace("fun", "awesome")
print(experience)
print(better_experience)

message = "I like cats, because cats are friendly"
new_message = message.replace('cats', 'dogs')
print(new_message)

my_message2 = "Split these words for me"
split_at_spaces = my_message2.split()
print(split_at_spaces)

my_message3 = "apples,oranges,bananas"
split_at_commas = my_message3.split(",")
print(split_at_commas)

# addition
result = 2+2+3
# subtraction
result1 = 22.2-3-11
# multiplication
result2 = 2*3*1.1
# division 
result3 = 10/4
# modulo (remainder)
result4 = 10%4
# floor division
result5 = 10//4
# exponent 
result6 = 2**3

# PEMDAS Parentheses, Exponents, Multiplication and Division, Addition and Subtraction
result7 = (5*2)+(4*2)
print(result7)
result8 = 2**3*(5-(3-2))/4+9//4
print(result8)

a = 15
b = 5
c = 0

c=a+b
print("1. C=", c)
c+=a
print("2. C=", c)
c*=a
print("3. C=", c)
c/=a
print("4. C=", c)
c%=a
print("5. C=", c)
c//=b
print("6. C=", c)
c=2
c**=a
print("7. C=", c)

my_burger_price = 15
is_fifteen_dollars = my_burger_price == 15
# is_fifteen_dollars = `True` - price equals 15
is_not_twenty_dollars = my_burger_price != 20
# is_not_twenty_dollars = `True` - price does not equal 20
is_affordable = my_burger_price <= 10
# is_affordable = `False` - price is NOT less than or equal to 10
is_pricey = my_burger_price >= 15
# is_pricey = `True` - price is greater than or equal to 15
your_burger_price = 20
my_burger_costs_more = my_burger_price > your_burger_price
# my_burger_costs_more = `False` - your price is greater than mine
my_burger_costs_less = my_burger_price < your_burger_price
# my_burger_costs_less = `True` - my price is less than yours

my_name = "Sally"
your_name = "Billy"
some_name = "Sally"
print(my_name == your_name)
print(my_name != your_name)
print(some_name == my_name)
print("---")
my_name = "Joe" # uppercase J
some_name = "joe" # lowercase j
print(my_name == some_name)
print(my_name.upper() == some_name.upper())

# details of the person who wants to watch the movie
person_age = 17
person_money = 25
# the requirements to watch the movie
age_restriction = 18
movie_price = 10
# conditions
is_old_enough = person_age >= age_restriction
has_enough_money = person_money >= movie_price
# two conditions combined using 'and'
can_watch_movie = is_old_enough and has_enough_money
print(can_watch_movie)
# the output is False, because the person's age is less than the required age

amount_of_money = 10
is_a_friend = True
can_hangout_with_me = amount_of_money >= 25 or is_a_friend
print(can_hangout_with_me)
# the output is `True`, because although they don't have enough money, they are a friend

person_age = 12
is_old_enough = person_age >= 18
must_leave = not is_old_enough
print(must_leave)
# output is True (must leave), because the person is NOT old enough (age < 18)

my_age = 17
my_money = 7
is_friend = True
has_food = False
can_watch_movie = not has_food and ((my_age >= 18 and my_money >= 15) or (is_friend and my_money >= 5))
print(can_watch_movie)

if <condition>:
  <operations>

person_money = 8
if person_money >= 10:
  print("This person can watch the movie")
else:
  print("Sorry, but you don't have enough money")

person_age = 18
if person_age >= 18:
  print("I can watch an R-rated movie")
elif person_age >= 13:
  print("I can watch a PG13-rated movie")
else:
  print("I can watch a G-rated movie") 

person_age = 15
has_car = False
mom_can_drive = True
outcome = ""
if person_age >= 18 and has_car:
  outcome = "I can go and see an R-rated movie"
elif person_age >= 13 and mom_can_drive:
  outcome = "Mom can take me to see a PG13-rated movie"
else:
  outcome = "I'm stuck at home today"
print(outcome)

