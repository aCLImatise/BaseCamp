class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/kinSimRiboswitch.cwl
inputs:
- id: energy_band_width
  doc: ':    Energy band width (in kcal) in which structures are completely enumerated.
    [15] To achieve reasonable runtimes, use RNAsubopt -e <xx> | wc -l to count the
    structures and keep it below a few millions.'
  type: string
  inputBinding:
    prefix: -E
- id: minimal_barrier_height
  doc: ':    Minimal barrier height (barriers --minh). [1] Minima seperated from their
    respective father by a lower barrier are merged with it.'
  type: string
  inputBinding:
    prefix: -m
- id: folding_temperature_performed
  doc: ':    Folding temperature in deg Celsius at which the simulation is performed.
    [37]'
  type: string
  inputBinding:
    prefix: -T
- id: allows_lonely_pairs
  doc: ':       Allows lonely pairs. By default, only "canonical" structures (i.e.
    such without any lonely pairs) are generated.'
  type: boolean
  inputBinding:
    prefix: -l
- id: remove_disconnected_structures
  doc: ':       Remove disconnected structures (i.e. not reachable from mfe) instead
    of trying to connect them with the findpath heuristic.'
  type: boolean
  inputBinding:
    prefix: -r
- id: file_containing_structures
  doc: ':    File containing additional structures to be included into the simulation,
    e.g. waterfall output.'
  type: string
  inputBinding:
    prefix: -a
- id: let_barriers_output
  doc: Let barriers output a list of contact / transient states, ie those having a
    neighbor in a different basin.
  type: boolean
  inputBinding:
    prefix: -c
- id: skip_generation_use
  doc: ':       Skip generation of macro states but use existing files as input. Pass
    file names of barriers files of monomer and dimer world as positional parameters.
    Assumes existence of BARFILE_FULL.sbmap. Only the options below and -T will have
    an effect if -M is given. Use the same temperature as during the generation of
    the macro states, or the rates will be incorrect.'
  type: boolean
  inputBinding:
    prefix: -M
- id: use_monomer_basin
  doc: ": Use the monomer basin containing structure <ss> as start state for the simulation.\
    \ By default, the basin containing the open chain (i.e. without any basepairs)\
    \ is used. When passing an integer <ii>, it's used as start state directly. When\
    \ removing disconnected states (-r), <ii> does NOT necessarily correspond to the\
    \ macrostate number from Barriers (e.g. for macrostates 1, 2, 3 where 2 has been\
    \ removed, -s 2 starts in macrostate 3). To refer directly to Barriers' macrostates,\
    \ use prefixes mon and dim (e.g. -s mon15 or -s dim1) for monomer or dimer macrostates,\
    \ respectively. Phew!"
  type: string
  inputBinding:
    prefix: -s
- id: ligand_concentration_mol
  doc: ':    Ligand concentration in molar =  mol / l = mol / dm^3 in the cell [1e-3]'
  type: string
  inputBinding:
    prefix: -L
- id: bonus_energy_binding
  doc: ':    Bonus energy for binding the ligand (>=0, in kcal/mol). With -M, specifying
    -B will re-compute the monomer<->dimer transition matrix, else the existing one
    is used. [9.59]'
  type: string
  inputBinding:
    prefix: -B
- id: folding_rate_rna
  doc: ':       Folding rate of RNA in s^-1 (pre-exponential factor). [1e6]'
  type: boolean
  inputBinding:
    prefix: -F
- id: dimerization_rate_m
  doc: ':       Dimerization rate in (M s)^-1 (pre-exponential factor). [1.7e5]'
  type: boolean
  inputBinding:
    prefix: -D
- id: _simulation_time
  doc: ':    Simulation time. [1e16]'
  type: string
  inputBinding:
    prefix: -t
- id: force_run_exists
  doc: ':       Force run, even if a lock file exists. If a lock file is found and
    -f is not given, the user is promted to confirm the run.'
  type: boolean
  inputBinding:
    prefix: -f
- id: args
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: sequence_dot_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- kinSimRiboswitch
