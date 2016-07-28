{-# OPTIONS_GHC -fno-warn-tabs #-}
{-|
Module      : Test.Hspec.Variant
Description : Varaint property spec
Copyright   : (c) Jorge Santiago Alvarez Cuadros, 2015
License     : GPL-3
Maintainer  : sanjorgek@ciencias.unam.mx
Stability   : experimental
Portability : portable

To test "invalid" and "valid" properties
-}
module Test.Hspec.Variant where
import Test.Hspec
import Test.QuickCheck.Variant

-- |Is a shorcut for
-- > it ".." $ propertyValid $ ..
propValid :: (VarTesteable prop) => String -> prop -> Spec
propValid s = it s . propertyValid

-- |Is a shorcut for
-- > it ".." $ propertyInvalid $ ..
propInvalid :: (VarTesteable prop) => String -> prop -> Spec
propInvalid s = it s . propertyInvalid
