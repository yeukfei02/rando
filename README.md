# rando

random item function in ruby

similar to [Rando](https://github.com/nastyox/Rando.js) but in ruby

```ruby
# install lib
bundle add rando
```


```ruby
rando = Rando.new
```

```ruby
rando.rando()                       # a floating-point number between 0 and 1 (could be exactly 0, but never exactly 1)  
rando.rando(5)                      # an integer between 0 and 5 (could be 0 or 5)  
rando.rando(5, 10)                  # a random integer between 5 and 10 (could be 5 or 10)  
rando.rando(5, "float")             # a floating-point number between 0 and 5 (could be exactly 0, but never exactly 5)  
rando.rando(5, 10, "float")         # a floating-point number between 5 and 10 (could be exactly 5, but never exactly 10)  
rando.rando(true, false)            # either true or false  
rando.rando(["a", "b"])             # {index:..., value:...} object representing a value of the provided array OR false if array is empty  
rando.rando({a: 1, b: 2})           # {key:..., value:...} object representing a property of the provided object OR false if object has no properties
rando.rando("Gee willikers!")       # a character from the provided string OR false if the string is empty. Reoccurring characters will naturally form a more likely return value  
rando.rando(nil)                    # ANY invalid arguments return false  
```

```ruby
rando.rando_sequence(5)              # an array of integers from 0 through 5 in random order  
rando.rando_sequence(5, 10)          # an array of integers from 5 through 10 in random order  
rando.rando_sequence(["a", "b"])     # an array of {index:..., value:...} objects representing the values of the provided array in random order  
rando.rando_sequence({a: 1, b: 2})   # an array of {key:..., value:...} objects representing the properties of the provided object in random order     
rando.rando_sequence("Good gravy!")  # an array of the characters of the provided string in random order  
rando.rando_sequence(nil)            # ANY invalid arguments return false
```

## Requirement

- install ruby (v2.7)
- install gem
- install bundle

## Testing and run

```zsh
// install ruby dependencies
$ bundle install

// build executable
$ gem build rando.gemspec

// remove gem version in rubygems
$ gem yank rando -v <version>

// publish new version to rubygems
$ gem push rando-<version>.gem

// run test
$ bundle exec rspec

// rubocop
$ rubocop --auto-correct
$ rubocop -A

// reek
$ reek
```
