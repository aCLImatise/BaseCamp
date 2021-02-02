class: CommandLineTool
id: kinSimRiboswitch.cwl
inputs:
- id: in_energy_band_width
  doc: ":    Energy band width (in kcal) in which structures are completely\nenumerated.\
    \ [15]\nTo achieve reasonable runtimes, use RNAsubopt -e <xx> | wc -l to\ncount\
    \ the structures and keep it below a few millions."
  type: long
  inputBinding:
    prefix: -E
- id: in_minimal_barrier_height
  doc: ":    Minimal barrier height (barriers --minh). [1]\nMinima seperated from\
    \ their respective father by a lower barrier\nare merged with it."
  type: long
  inputBinding:
    prefix: -m
- id: in_folding_temperature_isperformed
  doc: ":    Folding temperature in deg Celsius at which the simulation is\nperformed.\
    \ [37]"
  type: long
  inputBinding:
    prefix: -T
- id: in_allows_lonely_pairs
  doc: ":       Allows lonely pairs. By default, only \"canonical\" structures\n(i.e.\
    \ such without any lonely pairs) are generated."
  type: boolean
  inputBinding:
    prefix: -l
- id: in_remove_disconnected_structures
  doc: ":       Remove disconnected structures (i.e. not reachable from mfe)\ninstead\
    \ of trying to connect them with the findpath heuristic."
  type: boolean
  inputBinding:
    prefix: -r
- id: in_file_containing_structures
  doc: ":    File containing additional structures to be included into the\nsimulation,\
    \ e.g. waterfall output."
  type: File
  inputBinding:
    prefix: -a
- id: in_let_barriers_output
  doc: "Let barriers output a list of contact / transient states, ie\nthose having\
    \ a neighbor in a different basin."
  type: boolean
  inputBinding:
    prefix: -c
- id: in_skip_generation_use
  doc: ":       Skip generation of macro states but use existing files as input.\n\
    Pass file names of barriers files of monomer and dimer world as\npositional parameters.\
    \ Assumes existence of BARFILE_FULL.sbmap.\nOnly the options below and -T will\
    \ have an effect if -M is\ngiven. Use the same temperature as during the generation\
    \ of the\nmacro states, or the rates will be incorrect."
  type: boolean
  inputBinding:
    prefix: -M
- id: in_use_monomer_basin
  doc: ": Use the monomer basin containing structure <ss> as start state\nfor the\
    \ simulation. By default, the basin containing the open\nchain (i.e. without any\
    \ basepairs) is used.\nWhen passing an integer <ii>, it's used as start state\
    \ directly.\nWhen removing disconnected states (-r), <ii> does NOT\nnecessarily\
    \ correspond to the macrostate number from Barriers\n(e.g. for macrostates 1,\
    \ 2, 3 where 2 has been removed, -s 2\nstarts in macrostate 3). To refer directly\
    \ to Barriers'\nmacrostates, use prefixes mon and dim (e.g. -s mon15 or -s dim1)\n\
    for monomer or dimer macrostates, respectively. Phew!"
  type: long
  inputBinding:
    prefix: -s
- id: in_ligand_concentration_molar
  doc: ":    Ligand concentration in molar =  mol / l = mol / dm^3 in the\ncell [1e-3]"
  type: double
  inputBinding:
    prefix: -L
- id: in_bonus_energy_binding
  doc: ":    Bonus energy for binding the ligand (>=0, in kcal/mol). With -M,\nspecifying\
    \ -B will re-compute the monomer<->dimer transition\nmatrix, else the existing\
    \ one is used. [9.59]"
  type: double
  inputBinding:
    prefix: -B
- id: in_folding_rate_rna
  doc: ':       Folding rate of RNA in s^-1 (pre-exponential factor). [1e6]'
  type: boolean
  inputBinding:
    prefix: -F
- id: in_dimerization_rate_m
  doc: ':       Dimerization rate in (M s)^-1 (pre-exponential factor). [1.7e5]'
  type: boolean
  inputBinding:
    prefix: -D
- id: in__simulation_time
  doc: ':    Simulation time. [1e16]'
  type: double
  inputBinding:
    prefix: -t
- id: in_force_run_exists
  doc: ":       Force run, even if a lock file exists. If a lock file is found\nand\
    \ -f is not given, the user is promted to confirm the run."
  type: boolean
  inputBinding:
    prefix: -f
- id: in_args
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_sequence_dot_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_file_containing_structures
  doc: ":    File containing additional structures to be included into the\nsimulation,\
    \ e.g. waterfall output."
  type: File
  outputBinding:
    glob: $(inputs.in_file_containing_structures)
cwlVersion: v1.1
baseCommand:
- kinSimRiboswitch
