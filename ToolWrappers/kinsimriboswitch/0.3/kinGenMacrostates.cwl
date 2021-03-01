class: CommandLineTool
id: kinGenMacrostates.cwl
inputs:
- id: in_energy_band_width
  doc: ":     energy band width (in kcal) in which structures are completely\nenumerated\
    \ (15)"
  type: boolean?
  inputBinding:
    prefix: -E
- id: in_minimal_barrier_height
  doc: ":     minimal barrier height (barriers --minh) (1)\nMinima seperated from\
    \ their respective father by a lower\nbarrier are merged with it."
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_folding_temperature_performed
  doc: ':     folding temperature at which the simulation is performed'
  type: boolean?
  inputBinding:
    prefix: -T
- id: in_allows_lonely_pairs
  doc: ":     Allows lonely pairs. By default, only \"canonical\" structures\n(i.e.\
    \ such without any lonely pairs) are generated."
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_remove_disconnected_structures
  doc: ":     remove disconnected structures (i.e. not reachable from mfe)\ninstead\
    \ of trying to connect them with the findpath heuristic"
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_file_containing_structures
  doc: ":     file containing additional structures to be included into the\nsimulation,\
    \ e.g. waterfall output"
  type: File?
  inputBinding:
    prefix: -a
- id: in_let_barriers_output
  doc: "Let barriers output a list of contact / transient states, ie those\nhaving\
    \ a neighbor in a different basin."
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_number_threads_sorting
  doc: ':     number of threads for sorting of additionally added structures [4]'
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_hard_constraint_enumerate
  doc: ":     Hard constraint on the structures to enumerate, e.g. to\nenumerate only\
    \ structures containing a defined binding pocket.\nThe constraint needs to be\
    \ placed in the input file below the\nsequence using ViennaRNAs constraint notation:\n\
    x - unpaired base, () - forced base pair, . - no constraint"
  type: boolean?
  inputBinding:
    prefix: -C
- id: in_write_name_output
  doc: ":     Write the name of the output macrostate file to the file\n\"kinGenMacrostates_outfile.tmp\""
  type: File?
  inputBinding:
    prefix: -O
- id: in_force_run_exists
  doc: ":     Force run, even if a lock file exists. If a lock file is found\nand\
    \ -f is not given, the user is promted to confirm the run."
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_kin_sim
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_args
  doc: ''
  type: string?
  inputBinding:
    position: 1
- id: in_sequence_dot_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_file_containing_structures
  doc: ":     file containing additional structures to be included into the\nsimulation,\
    \ e.g. waterfall output"
  type: File?
  outputBinding:
    glob: $(inputs.in_file_containing_structures)
- id: out_write_name_output
  doc: ":     Write the name of the output macrostate file to the file\n\"kinGenMacrostates_outfile.tmp\""
  type: File?
  outputBinding:
    glob: $(inputs.in_write_name_output)
hints: []
cwlVersion: v1.1
baseCommand:
- kinGenMacrostates
