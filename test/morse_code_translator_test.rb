gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/morse_code_translator'

require 'pry'
class TranslateTest < Minitest::Test
def test_it_can_translate_english_to_morse
  translator = Translate.new
  assert_equal "......-...-..--- .-----.-..-..-..", translator.eng_to_morse("hello world")
end
def test_it_can_translate_morse_to_english
  skip
  translator = Translate.new
  assert_equal "......-...-..--- .-----.-..-..-..", translator.morse_to_eng("hello world")
end
end
