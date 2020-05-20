#Ceasar Cipher Small Ruby App 
# This was an assignment in THe Odin project.
#Link to the Assignment can be found in the Readme File.


#This line is a list of Alphabet letters.
alphabet_list = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N","O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z" ]

# Asking the user to write a word 
puts "Write a word: "
user_word = gets.chomp
#Turning every letter into an uppercase in order to be comparable with the main list above.
user_word.upcase!

#Asking the user to enter a number which i will use as a Cipher Key.
puts "write a number as a Cipher Key:"
user_num = gets.chomp.to_i

#Separating the word that the user entered to single Letters and assiging it to a new Array.
word_array = user_word.split("")

#This method will check every letter in the new array we created.
word_array.each{|letter|
  #The if statment checks if the word have letter Z
   if letter == "Z"
    #If there is letter Z then it will change the index back to 0
    #Then continue on changing the letters.
    index = 0
    cipher_index = index + user_num
    cipher_word = alphabet_list[cipher_index]
    print cipher_word
    #If the word does not have Z then it will continue changing the letters 
   else
    index = alphabet_list.find_index(letter)
    cipher_index = index + user_num
    cipher_word = alphabet_list[cipher_index]
    print cipher_word
   end
    
}
