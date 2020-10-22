# AIRBNB DOG version

## This project is in Ruby on Rails. 

<p align:center><img src="https://www.fidanimo.com/assets/actualities/000/154/large/dog-sitter.jpg"></p>

<p>There are three different table: Dog, Dogsitter and Stroll.   

<li>A Stroll has a date, a dogsitter and a dog.</li>   

<li>A dog has many dogsitter and many strolls.  </li>

<li>A dogsitter has many strolls and many dogs.</li></p>

## How to run the app:

<p>Do a Bundle Install to get last versions of Ruby, Rails and used Gems:</p>

```ruby
bundle install
```

<p>Go the the rail console by using:</p>

```ruby
rails c
```

<p>Table Print all Dogs: </p>

```ruby
tp Dog.all
```

<p>Table Print all Dogsitters: </p>

```ruby
tp Dogsitter.all
```

<p>Table Print all Strolls</p>

```ruby
tp Stroll.all
```
