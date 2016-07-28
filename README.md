# hspecVariant
Spec for testing properties for variant types

~~~haskell
{-# LANGUAGE TypeSynonymInstances #-}

type Natural = Integer

instance Variant Natural where
  invalid = do
    n <- arbitrary
    if (n<0) then return n else return ((-1)*(n+1))
  valid = do
    n <- arbitrary
    if (n>=0) then return n else return ((-1)*(n+1))
~~~
Test
~~~haskell
main::IO ()
main = hspec $
  describe "Naturals" $
    propValid "succ" $
      \x -> succ (x::Natural) > 0
~~~
