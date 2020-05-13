class: CommandLineTool
id: kinGenMacrostates.cwl
inputs:
- id: kin_sim
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: args
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: sequence_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: e
  doc: ':     energy band width (in kcal) in which structures are completely enumerated
    (15)'
  type: boolean
  inputBinding:
    prefix: -E
- id: m
  doc: ':     minimal barrier height (barriers --minh) (1) Minima seperated from their
    respective father by a lower barrier are merged with it.'
  type: boolean
  inputBinding:
    prefix: -m
- id: t
  doc: ':     folding temperature at which the simulation is performed'
  type: boolean
  inputBinding:
    prefix: -T
- id: l
  doc: ':     Allows lonely pairs. By default, only "canonical" structures (i.e. such
    without any lonely pairs) are generated.'
  type: boolean
  inputBinding:
    prefix: -l
- id: r
  doc: ':     remove disconnected structures (i.e. not reachable from mfe) instead
    of trying to connect them with the findpath heuristic'
  type: boolean
  inputBinding:
    prefix: -r
- id: a
  doc: ':     file containing additional structures to be included into the simulation,
    e.g. waterfall output'
  type: boolean
  inputBinding:
    prefix: -a
- id: c
  doc: Let barriers output a list of contact / transient states, ie those having a
    neighbor in a different basin.
  type: boolean
  inputBinding:
    prefix: -c
- id: t
  doc: ':     number of threads for sorting of additionally added structures [4]'
  type: boolean
  inputBinding:
    prefix: -t
- id: c
  doc: ':     Hard constraint on the structures to enumerate, e.g. to enumerate only
    structures containing a defined binding pocket. The constraint needs to be placed
    in the input file below the sequence using ViennaRNAs constraint notation: x -
    unpaired base, () - forced base pair, . - no constraint'
  type: boolean
  inputBinding:
    prefix: -C
- id: o
  doc: ':     Write the name of the output macrostate file to the file "kinGenMacrostates_outfile.tmp"'
  type: boolean
  inputBinding:
    prefix: -O
- id: f
  doc: ':     Force run, even if a lock file exists. If a lock file is found and -f
    is not given, the user is promted to confirm the run.'
  type: boolean
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- kinGenMacrostates
