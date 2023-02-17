module Main where

import Prelude

import Effect (Effect)
import Effect.Console (log)
import Test.Assert (assert')

import Alt as Alt

foreign import data MyClassInstance :: Type
foreign import data MyClassConstructor :: Type
foreign import create :: MyClassInstance
foreign import constructor :: MyClassConstructor

foreign import instanceOf :: forall a b. a -> b -> Boolean

main :: Effect Unit
main = do
  let value1 = create
      value2 = Alt.create
  assert' "value1 should be instance of constructor" $
    value1 `instanceOf` constructor
  assert' "value2 should be instance of Alt.constructor" $
    value2 `instanceOf` Alt.constructor
  assert' "value1 should be instance of Alt.constructor" $ 
    value1 `instanceOf` Alt.constructor
  assert' "value2 should be instance of constructor" $
    value2 `instanceOf` constructor
  log "it works!"
