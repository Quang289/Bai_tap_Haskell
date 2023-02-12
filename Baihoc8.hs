type Name = String
type Address = (String, Int)

data PaymentMethod = Cash | Card | Cryptocurrency deriving (Show)

type Person = (Name, Address, PaymentMethod)

bob = ("Bob Smith", ("Main St.", 555), Cash) :: Person
data Shape
  = Circle
      { position :: (Float, Float)
      , radius   :: Float
      , color    :: String
      }
  | Rectangle
      { position :: (Float, Float)
      , width    :: Float
      , height   :: Float
      , color    :: String
      }
  deriving (Show)