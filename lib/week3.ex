defmodule Week3 do
  @moduledoc """
  This is the homework for the functional programming class.

  It is written as a runnable Elixir module that contains a
  series of tests and empty functions. Your mission is to
  write code in the functions to make the tests pass.

  ## Running the Tests

  You can run the tests from the console, or from within VS Code.

  In the console:

  * make sure you're in the `week3` folder
  * run `mix test`

  In VS Code:

  * One time: Go to the `Extensions` view in VS Code and install the extension
    called `Elixir Test`

  * When you are working on this project, use `File/Open Folder` to put VS Code
    into the `week3` folder.

  * Make changes to lib\week3.ex

  * Run tests by right-clicking on the `test` folder in the Explorer window
    on the left, and selecting `Elixir Test: Run all tests from folder`

  ## What's in this file

  This file contains a number of functions that you have to fill in.

  Each function is preceeded by a comment. This tells you what to do, and
  also contains the tests for that function. The tests are written
  as example `iex` sessions that show the function being run as if
  from iex, and then show the output that IEx would display. The
  tests pass if your function behaves in the same way as the example.

  Your mission is to make the tests pass.
  """

  ############################################## Question 1

  @doc """
  Warm up.  If you run the tests before changing anything, you'll see
  that xxx tests fail. The function below fails because it returns
  the wrong value. Fix it, save this file, and run the tests.

  You should now see one passing test, and one less failing test.

  ## Examples

      iex> Week3.warm_up()
      "it works!"

  """
  def warm_up do
    "abject failure"
  end


  ############################################## Question 2

  @doc """
  Use the `Enum.map` function to convert a list of
  numbers into a list of boolean values (`true` or `false`),
  where `true` means the corresponding number is greater than or
  equal to zero.

  ## Examples

      iex> Week3.positive([ -2, -1, 0, 1, 2 ])
      [ false, false, true, true, true ]

      iex> Week3.positive([ 1, -2, 3, -4 ])
      [ true, false, true, false ]

      iex> Week3.positive([])
      []
  """

  def positive(list) do
    :your_code_goes_here
  end

  ############################################## Question 3

  @doc """
  Use `Enum.reduce` to write a function that returns
  `true` if all numbers in a list are greater than or equal
  to zero, `false` otherwise. If the list is empty, the
  function should return `true`.

  ## Examples

      iex> Week3.all_positive?([ -2, -1, 0, 1, 2 ])
      false

      iex> Week3.all_positive?([ 1, 9999, 0 ])
      true

      iex> Week3.all_positive?([])
      true
  """

  def all_positive?(list) do
    :your_code_goes_here
  end

  ############################################## Question 4

  @doc """
  Use `Enum.reduce` to write a function that reverses
  a list that you pass it.

  Hint: You pass `reduce` and initial value and a list. If the list
  is empty, then this function should return an empty list, which
  tells you what the initial value shold be. Now think about a nonempty list.
  The reducer function is passed a value from the list along with the
  result so far. If you're reversing the original list, where should
  that value go on the result list?

  Hint 2: In the last lesson we saw how to build lists by adding an element
  to the front of an existing list.
  ## Examples

      iex> Week3.reverse([ 1, 2, 3 ])
      [ 3, 2, 1]

      iex> Week3.reverse([ "cat", "dog", "elk" ])
      [ "elk", "dog", "cat" ]

      iex> Week3.reverse([])
      []
  """

  def reverse(list) do
    :your_code_goes_here
  end

  ############################################## Question 5

  @doc """
  Now we're going to play with pattern matching and
  lists. For the remainder of the questions you may not
  use the `Enum` module's functions.

  Reimplement the `all_positive?` function, this time using
  pattern matching to traverse the list.

  Challenge: Can you do this without using an `if` statement?

  ## Examples

      iex> Week3.all_positive_the_hard_way?([ -2, -1, 0, 1, 2 ])
      false

      iex> Week3.all_positive_the_hard_way?([ 1, 9999, 0 ])
      true

      iex> Week3.all_positive_the_hard_way?([])
      true
  """

  def all_positive_the_hard_way?([]) do
    :your_code_goes_here
  end

  def all_positive_the_hard_way?([ h | t ]) do
    :your_code_goes_here
  end

  ############################################## Question 6

  @doc """
  Write a function using pattern matching that takes
  a list of numbers and returns a list of their squares.

  ## Examples

      iex> Week3.square([ 1, 2, 3 ])
      [ 1, 4, 9]

      iex> Week3.square([ -4 ])
      [ 16 ]

      iex> Week3.square([])
      []
  """

  # (you'll probably have multiple heads for all the following functions.)

  def square(_) do
    :your_code_goes_here
  end


  ############################################## Question 7

  @doc """
  Every time a car is inspected its odometer reading is checked to
  make sure it is greater than the previous reading. (If not, it might
  have been tampered with, which is illegal.

  Write a function that is passed a list of odometer readings and that
  returns `true` only if every reading is greater than the previouds reading.

  Hint: If this is the only test that fails:

      Week3.valid_odometer?([ 111, 333, 222, 444 ])

  execute the function by hand and note the value you're passing it each time.

  ## Examples

      iex> Week3.valid_odometer?([ 111, 222, 333 ])
      true

      iex> Week3.valid_odometer?([ 222, 111, 333, 444 ])
      false

      iex> Week3.valid_odometer?([ 111, 111, 333, 444 ])
      false

      iex> Week3.valid_odometer?([ 111, 333, 222, 444 ])
      false

      iex> Week3.valid_odometer?([ 111 ])
      true

      iex> Week3.valid_odometer?([ ])
      true
  """

  def valid_odometer?(_) do
    :your_code_goes_here
  end

  ############################################## Question 8

  @doc """
  Write a function that gets passed two lists and that returns
  `true` if they are the same length. You may not use the built-in
  `length` function.

  ## Examples

      iex> Week3.same_length?([ 1, 2, 3 ], [ "ant", "bee", "cow"])
      true

      iex> Week3.same_length?([ 1, 2, 3 ], [ "ant", "cow"])
      false

      iex> Week3.same_length?([ 1 ], [ "ant", "bee", "cow"])
      false

      iex> Week3.same_length?([ ], [ ])
      true

      iex> Week3.same_length?([ 1 ], [ ])
      false

      iex> Week3.same_length?([ ], [ "ant"])
      false
  """

  def same_length?(_list1, _list2) do
    :your_code_goes_here
  end
end
