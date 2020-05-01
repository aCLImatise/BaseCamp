#!/usr/bin/env cwl-runner

baseCommand:
- kinGenMacrostates
class: CommandLineTool
cwlVersion: v1.0
id: kingenmacrostates
inputs:
- doc: ''
  id: kin_sim
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: args
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: sequence_fast_a
  inputBinding:
    position: 2
  type: string
- doc: ':     energy band width (in kcal) in which structures are completely enumerated
    (15)'
  id: e
  inputBinding:
    prefix: -E
  type: boolean
- doc: ':     minimal barrier height (barriers --minh) (1) Minima seperated from their
    respective father by a lower barrier are merged with it.'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: ':     folding temperature at which the simulation is performed'
  id: t
  inputBinding:
    prefix: -T
  type: boolean
- doc: ':     Allows lonely pairs. By default, only "canonical" structures (i.e. such
    without any lonely pairs) are generated.'
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: ':     remove disconnected structures (i.e. not reachable from mfe) instead
    of trying to connect them with the findpath heuristic'
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: ':     file containing additional structures to be included into the simulation,
    e.g. waterfall output'
  id: a
  inputBinding:
    prefix: -a
  type: boolean
- doc: Let barriers output a list of contact / transient states, ie those having a
    neighbor in a different basin.
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: ':     number of threads for sorting of additionally added structures [4]'
  id: t
  inputBinding:
    prefix: -t
  type: boolean
- doc: ':     Hard constraint on the structures to enumerate, e.g. to enumerate only
    structures containing a defined binding pocket. The constraint needs to be placed
    in the input file below the sequence using ViennaRNAs constraint notation: x -
    unpaired base, () - forced base pair, . - no constraint'
  id: c
  inputBinding:
    prefix: -C
  type: boolean
- doc: ':     Write the name of the output macrostate file to the file "kinGenMacrostates_outfile.tmp"'
  id: o
  inputBinding:
    prefix: -O
  type: boolean
- doc: ':     Force run, even if a lock file exists. If a lock file is found and -f
    is not given, the user is promted to confirm the run.'
  id: f
  inputBinding:
    prefix: -f
  type: boolean
