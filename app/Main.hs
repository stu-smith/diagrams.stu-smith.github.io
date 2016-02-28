{-# LANGUAGE NoMonomorphismRestriction, FlexibleContexts, GADTs #-}

module Main where

import Diagrams.Prelude
import Diagrams.Backend.SVG.CmdLine

import Hilbert

main = mainWith [("Hilbert", hilbertDiagram)]
