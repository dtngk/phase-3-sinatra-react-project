puts " Seeding..."

# Seed your database here
c1 = Company.create(name: "Hasbro", founding_year: 1923, headquarters: "Pawtucket, Rhode Island", logo: "https://upload.wikimedia.org/wikipedia/en/thumb/e/ea/Hasbro_logo.svg/225px-Hasbro_logo.svg.png")
c2 = Company.create(name: "Parker Brothers", founding_year: 1883, headquarters: "Beverly, Massachusetts", logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/Parker-Brothers-Logo.svg/330px-Parker-Brothers-Logo.svg.png")
c3 = Company.create(name: "Nintendo", founding_year: 1889, headquarters: "Kyoto, Japan", logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Nintendo.svg/330px-Nintendo.svg.png")
c4 = Company.create(name: "Mattel", founding_year: 1945, headquarters: "El Segundo, California", logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7b/Mattel_%282019%29.svg/225px-Mattel_%282019%29.svg.png")

s1 = Store.create(name: "Walmart", logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/Walmart_logo.svg/330px-Walmart_logo.svg.png")
s2 = Store.create(name: "Target Corporation", logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/Target_%282018%29.svg/225px-Target_%282018%29.svg.png")
s3 = Store.create(name: "Best Buy", logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c4/Best_Buy_logo_2018.svg/330px-Best_Buy_logo_2018.svg.png")
s4 = Store.create(name: "Toys R Us", logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/Toys_%22R%22_Us_logo.svg/330px-Toys_%22R%22_Us_logo.svg.png")

Toy.create(name: "Magic 8 ball", toy_type: "toy", rating: 3, price: 10, logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/90/Magic8ball.jpg/330px-Magic8ball.jpg", company_id: c4.id, store_id: s1.id)
Toy.create(name: "Magic 8 ball", toy_type: "toy", rating: 4, price: 10, logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/90/Magic8ball.jpg/330px-Magic8ball.jpg", company_id: c4.id, store_id: s2.id)
Toy.create(name: "Magic 8 ball", toy_type: "toy", rating: 4, price: 10, logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/90/Magic8ball.jpg/330px-Magic8ball.jpg", company_id: c4.id, store_id: s3.id)
Toy.create(name: "Magic 8 ball", toy_type: "toy", rating: 2, price: 10, logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/90/Magic8ball.jpg/330px-Magic8ball.jpg", company_id: c4.id, store_id: s4.id)

Toy.create(name: "Play-Doh", toy_type: "toy", rating: 3, price: 15, logo: "https://upload.wikimedia.org/wikipedia/en/thumb/3/3b/Play-Doh_brand_logo.svg/300px-Play-Doh_brand_logo.svg.png", company_id: c1.id, store_id: s1.id)
Toy.create(name: "Play-Doh", toy_type: "toy", rating: 2, price: 15, logo: "https://upload.wikimedia.org/wikipedia/en/thumb/3/3b/Play-Doh_brand_logo.svg/300px-Play-Doh_brand_logo.svg.png", company_id: c1.id, store_id: s2.id)
Toy.create(name: "Play-Doh", toy_type: "toy", rating: 3, price: 15, logo: "https://upload.wikimedia.org/wikipedia/en/thumb/3/3b/Play-Doh_brand_logo.svg/300px-Play-Doh_brand_logo.svg.png", company_id: c1.id, store_id: s4.id)

Toy.create(name: "Monoploy", toy_type: "board game", rating: 5, price: 28, logo: "https://upload.wikimedia.org/wikipedia/en/thumb/f/f9/Monopoly_pack_logo.png/375px-Monopoly_pack_logo.png", company_id: c2.id, store_id: s1.id)
Toy.create(name: "Monoploy", toy_type: "board game", rating: 4, price: 22, logo: "https://upload.wikimedia.org/wikipedia/en/thumb/f/f9/Monopoly_pack_logo.png/375px-Monopoly_pack_logo.png", company_id: c2.id, store_id: s3.id)
Toy.create(name: "Monoploy", toy_type: "board game", rating: 3, price: 25, logo: "https://upload.wikimedia.org/wikipedia/en/thumb/f/f9/Monopoly_pack_logo.png/375px-Monopoly_pack_logo.png", company_id: c2.id, store_id: s4.id)

Toy.create(name: "Pokemon", toy_type: "video game", rating: 5, price: 50, logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/International_Pok%C3%A9mon_logo.svg/375px-International_Pok%C3%A9mon_logo.svg.png", company_id: c3.id, store_id: s1.id)
Toy.create(name: "Pokemon", toy_type: "video game", rating: 5, price: 45, logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/International_Pok%C3%A9mon_logo.svg/375px-International_Pok%C3%A9mon_logo.svg.png", company_id: c3.id, store_id: s2.id)
Toy.create(name: "Pokemon", toy_type: "video game", rating: 5, price: 55, logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/International_Pok%C3%A9mon_logo.svg/375px-International_Pok%C3%A9mon_logo.svg.png", company_id: c3.id, store_id: s3.id)
Toy.create(name: "Pokemon", toy_type: "video game", rating: 5, price: 50, logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/International_Pok%C3%A9mon_logo.svg/375px-International_Pok%C3%A9mon_logo.svg.png", company_id: c3.id, store_id: s4.id)

puts "✅ Done seeding!"
