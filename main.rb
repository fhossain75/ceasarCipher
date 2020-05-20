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
word_array.each{|l|
  #Here it finds the index number for every letter.
  index = alphabet_list.find_index(l)
  #Icrimenting the actual index number with the number the user provided us.
  cipher_index = index + user_num
  #Writing the letters again with the new index we have.
  cipher_word = alphabet_list[cipher_index]
  #Printing the new letters.
  print cipher_word
}
