# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "destroying all"
# Booking.destroy_all
Feature.destroy_all
# Favorite.destroy_all
Resort.destroy_all
User.destroy_all


SLEEP_TIME = 10
puts "user created"
user1 = User.create!(email:'email@email.com', password:'password')

puts "features created"
feature1 = Feature.create(name: 'Surfing')
feature2 = Feature.create(name: 'Yoga')
feature3 = Feature.create(name: 'Eco')
feature4 = Feature.create(name: 'Vegan')
feature5 = Feature.create(name: 'Diving')
feature6 = Feature.create(name: 'Golf')
feature7 = Feature.create(name: 'Day Spa')

puts "building resorts"
resort1 = Resort.create(user: user1, name: 'Shanghai Fenyang Boutique Hotel', continent: 'Asia', country: 'China', address: 'No.45 Fenyang Road, Xuhui, 210008 Shanghai, China', latitude: 31.212558, longitude: 121.454990, website: 'http://www.china.com/', photo: 'https://pix10.agoda.net/hotelphotos/334/334882/334882_14061609470019861047.jpg?s=1024x768',  description: 'China resort description')

resort2 = Resort.create(user: user1, name: 'AYANA Resort and Spa, BALI', continent: 'Asia', country: 'Indonesia', address: 'Karang Mas Estate, Jalan Karang Mas Sejahtera, 80364 Jimbaran, Indonesia', latitude: -8.788849, longitude: 115.155452, website: 'http://www.indonesia.com/', photo: 'https://t-ec.bstatic.com/photos/hotel/max1024x768/836/8366335.jpg', description: 'Indonesia resort description')

resort3 = Resort.create(user: user1, name: 'Katathani Phuket Beach Resort', continent: 'Asia', country: 'Thailand', address: '14 Kata Noi Rd., 83100 Kata Beach, Thailand ',latitude: 7.807111, longitude: 98.299593, website: 'http://www.france.com/', photo: 'https://s-ec.bstatic.com/photos/hotel/max1024x768/941/94163014.jpg', description: 'France resort description')

resort4 = Resort.create(user: user1, name: 'Sokha Angkor Resort', continent: 'Asia', country: 'Cambodia', address: 'National Road No. 6 and Sivatha Street Junction, Siem Reap, Cambodia',latitude: 13.363742, longitude: 103.855918, website: 'http://www.bolivia.com/', photo: 'http://static.asiawebdirect.com/m/bangkok/portals/bali-indonesia-com/homepage/beach-resort/pagePropertiesphoto/best-bali-beach-resorts.jpg.jpg', description: 'Bolivia resort description')

resort5 = Resort.create(user: user1, name: 'Constance Moofushi', continent: 'Asia', country: 'Maldives', address: 'South Atoll, Alifu Atoll 00200, Moofushi Island, Maldives', latitude: 3.884293, longitude: 72.727770, website: 'https://www.constancehotels.com/en/hotels-resorts/maldives/moofushi/', photo: 'https://www.tropicbreeze.co.uk/photos/Caribbean/BRI005_Cotton%20House%20Seaview%20Room%20Plunge%20Pool%201200%20450.jpg', description: 'Upscale all-inclusive resort in the Indian Ocean')

resort6 = Resort.create(user: user1, name: 'Sunway Hotel & Spa', continent: 'Asia', country: 'Malaysia', address: 'Persiaran Lagoon, Bandar Sunway, 47500 Kuala Lumpur, Malaysia', latitude: 3.072268, longitude: 101.608965, website: 'https://www.barcelo.com/en-us/royal-hideaway/hotels/mexico/riviera-maya/royal-hideaway-playacar/?utm_source=google&utm_medium=organic&utm_campaign=my_business&utm_content=h385', photo: 'http://www.barcelo.com/en-us/photos/385-swimming-pool-3-hotel-barcelo-royal-hideaway-playacar-resort_tcm21-34266.jpg', description: 'Upscale, beachfront, adults-only resort')

resort7 = Resort.create(user: user1, name: 'The Village Coconut Island', continent: 'Asia', country: 'Thailand', address: '51/7 Moo 6, T.KOHKAEW, Phuket 83200, Thailand', latitude: 7.938938, longitude: 98.425896, website: 'http://www.thevillage-coconutisland.com/', photo: 'https://downloads.thompsons.co.za/tsdata/photos/i/585245568e1f2556760564-lg.jpg', description: 'Upscale beachfront resort overlooking Phang Nga Bay')

resort8 = Resort.create(user: user1, name: 'Grand Coloane Resort', continent: 'Asia', country: 'China', address: '1918 Estrada de Hac Sa, Coloane, Macau, Macao', latitude: 22.125311, longitude: 113.576755, website: 'http://www.eastbedarra.com.au/', photo: 'http://blog.tropicalnorthqueensland.org.au/wp-content/uploads/Bedarra8.jpg', description: 'Luxury beach villa with private pool')

resort9 = Resort.create(user: user1, name: 'Jimbaran Cliffs Hotel & Spa', continent: 'Asia', country: 'Indonesia', address: 'Jalan Gedong Sari II #888, Jimbaran, 80361 Jimbaran, Indonesia', latitude: -8.790538, longitude: 115.200251, website: 'http://www.cottonhouse.net/', photo: 'https://www.tropicbreeze.co.uk/photos/Caribbean/BRI005_Cotton%20House%20Seaview%20Room%20Plunge%20Pool%201200%20450.jpg', description: 'Exclusive Carribean vacation spot')

resort10 = Resort.create(user: user1, name: 'Pertiwi Bisma ', continent: 'Asia', country: 'Indonesia', address: 'Jl. Bisma - Ubud, 80571 Ubud, Indonesia', latitude: -8.511524, longitude: 115.258271, website: 'http://www.china.com/', photo: 'https://media-cdn.tripadvisor.com/media/photo-s/08/2f/8b/5a/exterior.jpg', description: 'Curacao resort description')

resort11 = Resort.create(user: user1, name: 'Jade Mountain', continent: 'Carribean', country: 'St Lucia', address: 'Jade Mountain Resort, St Lucia', website: 'http://www.indonesia.com/', latitude: 13.864564, longitude: -61.075653, photo: 'https://twistedsifter.files.wordpress.com/2011/04/jade-mountain-st-lucia-infinity-pool-every-room-7.jpg?w=800&h=533', description: 'Indonesia resort description')
resort12 = Resort.create(user: user1, name: 'The Ritz', continent: 'Asia', country: 'China', address: 'Rua do Visconde Paco de Arcos, Macau, China', latitude: 22.198405, longitude: 113.536746, website: 'https://travel.home.sndimg.com/content/dam/photos/travel/fullset/2014/12/22/57/travels-best-all-inclusive-resorts-2015-promo.rend.hgtvcom.616.462.suffix/1491584666701.jpeg', description: 'France resort description')
resort13 = Resort.create(user: user1, name: 'Turquesa Hotel', continent: 'Carribean', country: 'Domincan Republic', address: '1Av. Anacaona 101, Santo Domingo, Dominican Republic', latitude: 18.438664, longitude: -69.969524, website: 'http://www.bolivia.com/', photo: 'https://exp.cdn-hotels.com/hotels/6000000/5220000/5211800/5211746/5211746_85_z.jpg', description: 'Bolivia resort description')
resort15 = Resort.create(user: user1, name: 'Hyatt Regency Nice Palais de la Méditerranée', continent: 'Europe', country: 'France', address: '13 Prom. des Anglais, 06000 Nice, France', latitude: 43.695300, longitude: -7.263006, website: 'http://www.bolivia.com/', photo: 'https://www.frenchtravel.com.au/media/catalog/product/cache/2/photo/780x480/77ac07402bccf49cd411899c6484a428/h/y/hyatt_regency_nice_palais.jpg', description: 'Bolivia resort description')

puts "feature building for resorts"
resort1.features << [feature2, feature3, feature7]
resort2.features << [feature2, feature6, feature7]
resort3.features << [feature2, feature3, feature7]
resort4.features << [feature2, feature5]
resort5.features << [feature2, feature4, feature7]
resort6.features << [feature2, feature4]
resort7.features << [feature2, feature5]
resort8.features << [feature2, feature6]
resort9.features << [feature2, feature5]
resort10.features << [feature2, feature2, feature7]
resort11.features << [feature2, feature3]
resort13.features << [feature2, feature7]


# puts "bookings created"
# booking1 = Booking.create(start_date: "July", duration: 6, price: 120, user: user1, resort: resort1)

