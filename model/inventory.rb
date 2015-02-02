require_relative './item'

# Manages the Recipe Inventory
class Inventory
  def self.all
    [
      Item.new(id: 1,
               category: 'Vodka',
               name: 'Moscow Mule',
               # price: 9.99,
               ingredients: '2 oz. vodka
                             3 oz. ginger beer
                             juice of half a lime',
               description: 'Squeeze half a lime into a collins glass or copper mug, then drop in the rind. Add 2 or 3 ice cubes, pour in the vodka and fill with cold ginger beer (not ginger ale!). Garnish with a lime wheel and enjoy.',
               image_file: 'moscow_mule.jpg'
              ),
      Item.new(id: 2,
               category: 'Vodka',
               name: 'Greyhound',
               # price: 9.98,
               ingredients: '2 oz vodka
                             2 oz grapefruit juice',
               description: 'Add vodka to a collins glass filled with ice. Top with grapefruit juice and stir. Garnish with a lemon or lime wedge. (To make a Salty Dog, coat the rim of the glass with salt and leave out the garnish.)',
               image_file: 'greyhound.jpg'
              ),
      Item.new(id: 3,
               category: 'Vodka',
               name: 'The Lebowski',
               # price: 9.97,
               ingredients: '2 oz vodka 
                            1 oz Kahlúa
                            Heavy cream
                            1 joint',
               description: 'Add vodka and Kahlúa to an Old Fashioned glass filled with ice. Top with a big splash of heavy cream and stir. Hit the joint a couple of times, then enjoy!',
               image_file: 'white-russian.jpg'
              ),
      Item.new(id: 4,
               category: 'Whiskey',
               name: 'Manhattan',
               # price: 8.99,
               ingredients: '2.5 oz Bourbon
                            1 oz Sweet Vermouth
                            3 dashes Bitters
                            1 maraschino cherry',
               description: 'Add all ingredients to a mixing glass and fill with ice. Stir vigorously, and strain into a coupe glass. Garnish with one to two speared cherries.
',
               image_file: 'manhattan.jpg'
              ),
      Item.new(id: 5,
               category: 'Whiskey',
               name: 'Whiskey Sour',
               # price:   8.98,
               ingredients: '.75 oz Fresh lemon juice
                            .75 oz Simple syrup (one part water, one part sugar)
                            1.5 oz Bourbon',
               description: 'Add all ingredients to a shaker and fill with ice. Shake, and strain into a rocks glass filled with fresh ice. Garnish with a cherry and/or lemon wedge.',
               image_file: 'whiskey_sour.jpg'
              ),
      Item.new(id: 6,
               category: 'Whiskey',
               name: 'Bone Machine',
               # price:  8.97,
               ingredients: '1 oz Bourbon
                            1.5 oz Sherry
                            .5 oz Amaro Nonino
                            .25 oz Bénédictine
                            3 dashes of orange bitters
                            1 large ice cube',
               description: 'In a mixing glass filled with ice, add bourbon, sherry, amaro, Bénédictine, bitters and stir. Strain into an Old-fashioned Glass filled with one large ice cube. Flame the orange peel over the glass and add. Serve.',
               image_file: 'old_fashioned.jpg'
              ),
      Item.new(id: 7,
               category: 'Hypnotiq',
               name: 'Bullshit',
               # price:   7.99,
               ingredients: '1 oz Hypnotiq 
                            1 oz Sloe Gin 
                            1 oz Red Bul',
               description: 'Add all ingredients to a shaker full of ice, and shake vigorously. Strain into a shot glass and serve.',
               image_file: '13596.jpg'
              ),
      Item.new(id: 8,
               category: 'Hypnotiq',
               name: 'Incredible Hulk',
               # price:   7.98,
               ingredients: '1 oz Hypnotiq 
                            1 oz Hennessy Cognac',
               description: 'Add all ingredients to a shaker full of ice, and shake vigorously. Strain into a shot glass and serve.',
               image_file: 'dazzler.png'
              ),
      Item.new(id: 9,
               category: 'Hypnotiq',
               name: 'Breaking Bad',
               # price:  7.97,
               ingredients: '1 oz. Hpnotiq
                            1 oz. Vodka
                            1/2 oz. Cointreau',
               description: 'Add all ingredients to a shaker full of ice, and shake vigorously. Strain into a martini glass and serve with a Blue Rock Candy Swizzle Stick.
',
               image_file: '13601.jpg'
              ),
      Item.new(id: 10,
               category: 'Rum',
               name: 'Painkiller',
               # price:  6.99,
               ingredients: '2 oz Rum
                            4 oz Pineapple juice
                            1 oz Orange juice
                            1 oz Cream of coconut',
               description: 'Add all the ingredients to a Hurricane glass or large snifter and fill with ice. Stir to combine and garnish with an orange wedge, a cherry and freshly grated nutmeg.',
               image_file: 'painkiller.png'
              ),
      Item.new(id: 11,
               category: 'Rum',
               name: 'Black Key',
               # price:  6.98,
               ingredients: '2 oz Mount Gay Black Barrel Rum
                            .5 oz maple syrup
                            1 dash bitters
                            1 dash orange bitters',
               description: 'Add all ingredients to a mixing glass and shake (without ice) for 10 to 15 seconds. Add ice and shake again for 30 to 45 seconds. Strain into a rocks glass over a large piece of ice and garnish with a lemon peel and a maraschino cherry.',
               image_file: 'darkrum.jpg'
              ),
      Item.new(id: 12,
               category: 'Rum',
               name: 'Hurricane',
               # price:  6.97,
               ingredients: '2 oz White rum
                            2 oz Dark rum
                            1 oz Lime juice
                            1 oz Orange juice
                            2 oz Passion fruit juice
                            .5 oz Simple syrup (one part sugar, one part water)
                            .5 oz Grenadine',
               description: 'Add all the ingredients to a shaker and fill with ice. Shake, and strain into a large Hurricane glass filled with fresh ice. Garnish with an orange half-wheel and a cherry.',
               image_file: 'hurricane.jpg'
              )
    ]
  end

  def self.find(id)
    all.find do |item|
      item.id == id
    end
  end

  def self.search(pattern)
    all.select do |item|
      item.category.downcase.include?(pattern.downcase) ||
      item.name.downcase.include?(pattern.downcase) ||
      item.description.downcase.include?(pattern.downcase)
    end
  end
end
