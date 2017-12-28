{-# LANGUAGE NoMonomorphismRestriction, FlexibleContexts, GADTs #-}

module RayTracing
(
  rayTracingDiagram
) where

import Diagrams.Prelude
import Diagrams.Backend.SVG.CmdLine

sun = circle 1 # fc yellow # lc orange # lw 2
blueCircle = circle 4 # fc blue # lw none
screen = rect 0.1 20 # fc black # lw none

threeObjects = atPoints (trailVertices $ triangle 20) (repeat blueCircle)

rayTracingDiagram :: Diagram B
rayTracingDiagram = vsep 5 [sun, hsep 3 [screen, threeObjects]]
