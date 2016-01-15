# Tastier

A Coco/R based attributed translation grammar based compiler. When combined with
the [Tastier Machine](https://github.com/c-brenn/TastierMachine) you can run
Tasty programs.

## What it can do

Here's a sample program showing some of the things I implemented:

```ruby
program Tastier
  // procedures
  def sample_procedure
    write "wow, procedure calls";
  end

  defstruct sample_struct
    int * bar;
    int baz;
  end

  // constants
  const int blaze := 420;
  def main
    // pointers
    int * numbers;
    numbers := [1, 2, 3, 4, 5];

    // strings
    char * wow;
    wow := "wow!";

    // print multiple things
    write wow, numbers[4], blaze;

    // call procedures (parentheses optional)
    sample_procedure;

    // struct things
    struct sample_struct foo;
    foo := malloc sizeof sample_struct;

    foo.bar := [1, 2, 3];
    foo.baz := 7;

    // some fancy iterators

    loop 10 times do
      write foo.baz;
    end

    foreach number in numbers do
      write number;
    end

    // and much more...
  end
end
```
