#!/bin/bash

set -exu

stack build
stack exec diagrams-exe -- -S Hilbert -o output/hilbert.svg -w 100 -h 100
stack exec diagrams-exe -- -S RayTracing -o output/raytracing.svg -w 200 -h 200
