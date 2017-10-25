# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
MonFrenchExpresso.destroy_all

puts 'Creating MFEs...'
mfes_attributes = [
  {
    intro:      "“C'est un plaisir de vous rencontrer !”",
    learn:      "présenter quelqu'un",
    question1:  "Pour présenter votre mari à vos collègues, vous dites",
    option1:    "Il est mon mari.",
    option2:    "C'est mon mari.",
    answer:     2,
    rulefr:     "Eh oui ! <b>Devant un nom</b>, on utilise <em>“c'est...”</em>.<br/>Mais si vous <b>décrivez</b> la personne, vous utilisez <b>“il est...”</b> ou <b>“elle est...“</b>.<br/>Ex. <em>Mon mari? Il est formidable!</em>",
    ruleen:     "Before a noun, always use “c'est...”.<br/>But if you describe someone, you have to use “il est” (he is) or “elle est” (she is).<br/>E.g. My husband ? he is fantastic!",
    question2:  "Alors, qui est la personne<br/>à côté de vous ?",
    color:      "#f9dc24"
  },
  {
    intro:      "“Je pense, donc je suis”",
    learn:      "donner votre avis",
    question1:  "Pour donner votre opinion, vous dites",
    option1:    "Je pense que c'est une bonne idée.",
    option2:    "Je pense c'est une bonne idée.",
    answer:     1,
    rulefr:     "Eh oui ! <b>Après le verbe “penser”</b>, s'il y a un sujet (Ex. je, tu, nous, ce, ça...), <b>“que”</b> est <b>obligatoire</b>.<br/>C'est plus strict qu'en anglais. Quand, en anglais, le <em>that</em> est facultatif, en français, le <em>que</em> est impératif !<br/>Et c'est pareil avec les verbes <b>croire, trouver, être sûr</b>...",
    ruleen:     "If the verb “penser” is followed by a subject like je, tu, nous, ce, ça, etc. , “que” is mandatory.<br/>It's stricter than in English. When using “that” is optional in English, in French, using “que” is essential.<br/>And it works the same with the verbs “to believe”, “to find”, “to be sure” and so on...
  expfr1: Je <b>le pense aussi</b>.",
    question2:  "La journée commence bien.<br/>Et vous, qu'en pensez-vous ?",
    color:      "#3DEEFA"
  }

]

MonFrenchExpresso.create!(mfes_attributes)
puts 'Finished!'
