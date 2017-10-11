class Translate
def initialize
  @dictionary = {'a' =>'.-', 'b'=> '-...', 'c' => '-.-.', 'd'=> '-..', 'e'=> '.',
    'f'=>'..-.','g'=>'--.','h'=> '....','i'=>'..','j'=>'.---','k' => '-.-','l'=>'.-..',
    'm'=>'--','n'=>'-.','o'=>'---','p'=>'.--.','q'=>'--.-',
  'r'=>'.-.','s'=>'...','t'=>'-','u'=>'..-','v'=>'...-','w'=>'.--','x'=>'-..-','y'=>'-.--','z'=>'--..', 1 => '.----',2 => '..---',3 => '...--', 4 => '....-',
  5=>'.....',6=>'-....', 7=>'--...',8=>'---..',9=>'----.',0=>'-----', ' ' => ' '}
  @sentence = []
  @eng_sentence =[]
end


def eng_to_morse(text)
 text = text.split('')
 text.each_with_index do |v,i|
  @dictionary.each do |key, value|
     if key == text[i]
       @sentence << value
    end
  end
end
   @sentence = @sentence.join('')
   @sentence
end

def morse_to_eng(morse_code)
 morse_code.split("   ").map do |word|
    word.split(" ").map do |letter|
      @eng_sentence << (@dictionary[letter])
  end
    @eng_sentence.push(" ")
end
  p @eng_sentence
end
end
