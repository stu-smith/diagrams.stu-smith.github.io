{-# LANGUAGE NoMonomorphismRestriction, FlexibleContexts, GADTs #-}

module Hilbert
(
  hilbertDiagram
) where

import Diagrams.Prelude
import Diagrams.Backend.SVG.CmdLine

hilbert 0 = mempty
hilbert n = hilbert' (n-1) # reflectY <> vrule 1
         <> hilbert  (n-1) <> hrule 1
         <> hilbert  (n-1) <> vrule (-1)
         <> hilbert' (n-1) # reflectX
  where
    hilbert' m = hilbert m # rotateBy (1/4)

hilbertDiagram :: Diagram B
hilbertDiagram = strokeT (hilbert 6) # lc silver
                                     # opacity 0.3
