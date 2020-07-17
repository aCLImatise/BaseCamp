class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/kinGenMacrostates.cwl
inputs:
- id: energy_band_width
  doc: ':     energy band width (in kcal) in which structures are completely enumerated
    (15)'
  type: boolean
  inputBinding:
    prefix: -E
- id: minimal_barrier_height
  doc: ':     minimal barrier height (barriers --minh) (1) Minima seperated from their
    respective father by a lower barrier are merged with it.'
  type: boolean
  inputBinding:
    prefix: -m
- id: folding_temperature_performed
  doc: ':     folding temperature at which the simulation is performed'
  type: boolean
  inputBinding:
    prefix: -T
- id: allows_lonely_pairs
  doc: ':     Allows lonely pairs. By default, only "canonical" structures (i.e. such
    without any lonely pairs) are generated.'
  type: boolean
  inputBinding:
    prefix: -l
- id: remove_disconnected_structures
  doc: ':     remove disconnected structures (i.e. not reachable from mfe) instead
    of trying to connect them with the findpath heuristic'
  type: boolean
  inputBinding:
    prefix: -r
- id: file_containing_structures
  doc: ':     file containing additional structures to be included into the simulation,
    e.g. waterfall output'
  type: boolean
  inputBinding:
    prefix: -a
- id: let_barriers_output
  doc: Let barriers output a list of contact / transient states, ie those having a
    neighbor in a different basin.
  type: boolean
  inputBinding:
    prefix: -c
- id: number_threads_sorting
  doc: ':     number of threads for sorting of additionally added structures [4]'
  type: boolean
  inputBinding:
    prefix: -t
- id: hard_constraint_enumerate
  doc: ':     Hard constraint on the structures to enumerate, e.g. to enumerate only
    structures containing a defined binding pocket. The constraint needs to be placed
    in the input file below the sequence using ViennaRNAs constraint notation: x -
    unpaired base, () - forced base pair, . - no constraint'
  type: boolean
  inputBinding:
    prefix: -C
- id: write_name_output
  doc: ':     Write the name of the output macrostate file to the file "kinGenMacrostates_outfile.tmp"'
  type: boolean
  inputBinding:
    prefix: -O
- id: force_run_exists
  doc: ':     Force run, even if a lock file exists. If a lock file is found and -f
    is not given, the user is promted to confirm the run.'
  type: boolean
  inputBinding:
    prefix: -f
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
- id: sequence_dot_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- kinGenMacrostates
