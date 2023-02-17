module Alt where

foreign import data MyClassInstance :: Type
foreign import data MyClassConstructor :: Type
foreign import create :: MyClassInstance
foreign import constructor :: MyClassConstructor
