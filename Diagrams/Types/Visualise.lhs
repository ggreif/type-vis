> {-# LANGUAGE TypeFamilies #-}
> module Visualize where


> import Diagrams.TwoD
> import Diagrams.Path
> import Graphics.Rendering.Diagrams
> import Data.Typeable



> typeVis :: (Typeable a, PathLike p, Transformable p, V p ~ R2) => FormHints -> a -> p
> typeVis hints a = typeVis' (splitTyConApp $ typeOf a)

> data FormHints = Hints

> typeVis' (tyCon, tyArgs) = unitCircle


Tests

> t1 :: Path R2
> t1 = typeVis Hints (42 :: Int)
