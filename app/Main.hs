{-# LANGUAGE NoMonomorphismRestriction, FlexibleContexts, GADTs #-}

module Main where

import Diagrams.Prelude
import Diagrams.Backend.SVG.CmdLine

import Hilbert
import RayTracing

main = mainWith [ ("Hilbert", hilbertDiagram)
                , ("RayTracing", rayTracingDiagram)
                ]
