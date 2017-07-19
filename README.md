# hspecVariant

Spec for testing properties for variant types

[![hspecVariant](https://img.shields.io/badge/hspecVariant-v0.1.0.1-blue.svg?style=plastic)](https://hackage.haskell.org/package/hspecVariant)

```haskell
{-# LANGUAGE TypeSynonymInstances #-}

type Natural = Integer

instance Variant Natural where
  invalid = do
    n <- arbitrary
    if (n<0) then return n else return ((-1)*(n+1))
  valid = do
    n <- arbitrary
    if (n>=0) then return n else return ((-1)*n)
```

Test

```haskell
main::IO ()
main = hspec $
  describe "Naturals" $
    propValid "succ" $
      \x -> succ (x::Natural) > 0
```

## More badges

[![QuickCheckVariant](https://img.shields.io/badge/winter-is%20here-blue.svg)](http://sanjorgek.com/hspecVariant/)

[![forthebadge](http://forthebadge.com/images/badges/built-with-science.svg)](http://sanjorgek.com/hspecVariant/)

[![forthebadge](http://forthebadge.com/images/badges/you-didnt-ask-for-this.svg)](http://sanjorgek.com/hspecVariant/)

[![forthebadge](http://forthebadge.com/images/badges/thats-how-they-get-you.svg)](http://sanjorgek.com/hspecVariant/)

[![forthebadge](http://forthebadge.com/images/badges/its-not-a-lie-if-you-believe-it.svg)](http://sanjorgek.com/hspecVariant/)
