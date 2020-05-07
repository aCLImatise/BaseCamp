class: CommandLineTool
id: kinSimRiboswitch.cwl
inputs:
- id: args
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: sequence_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: e
  doc: ':    Energy band width (in kcal) in which structures are completely enumerated.
    [15] To achieve reasonable runtimes, use RNAsubopt -e <xx> | wc -l to count the
    structures and keep it below a few millions.'
  type: string
  inputBinding:
    prefix: -E
- id: m
  doc: ':    Minimal barrier height (barriers --minh). [1] Minima seperated from their
    respective father by a lower barrier are merged with it.'
  type: string
  inputBinding:
    prefix: -m
- id: t
  doc: ':    Folding temperature in deg Celsius at which the simulation is performed.
    [37]'
  type: string
  inputBinding:
    prefix: -T
- id: l
  doc: ':       Allows lonely pairs. By default, only "canonical" structures (i.e.
    such without any lonely pairs) are generated.'
  type: boolean
  inputBinding:
    prefix: -l
- id: r
  doc: ':       Remove disconnected structures (i.e. not reachable from mfe) instead
    of trying to connect them with the findpath heuristic.'
  type: boolean
  inputBinding:
    prefix: -r
- id: a
  doc: ':    File containing additional structures to be included into the simulation,
    e.g. waterfall output.'
  type: string
  inputBinding:
    prefix: -a
- id: c
  doc: Let barriers output a list of contact / transient states, ie those having a
    neighbor in a different basin.
  type: boolean
  inputBinding:
    prefix: -c
- id: m
  doc: ':       Skip generation of macro states but use existing files as input. Pass
    file names of barriers files of monomer and dimer world as positional parameters.
    Assumes existence of BARFILE_FULL.sbmap. Only the options below and -T will have
    an effect if -M is given. Use the same temperature as during the generation of
    the macro states, or the rates will be incorrect.'
  type: boolean
  inputBinding:
    prefix: -M
- id: s
  doc: "/ii: Use the monomer basin containing structure <ss> as start state for the\
    \ simulation. By default, the basin containing the open chain (i.e. without any\
    \ basepairs) is used. When passing an integer <ii>, it's used as start state directly.\
    \ When removing disconnected states (-r), <ii> does NOT necessarily correspond\
    \ to the macrostate number from Barriers (e.g. for macrostates 1, 2, 3 where 2\
    \ has been removed, -s 2 starts in macrostate 3). To refer directly to Barriers'\
    \ macrostates, use prefixes mon and dim (e.g. -s mon15 or -s dim1) for monomer\
    \ or dimer macrostates, respectively. Phew!"
  type: string
  inputBinding:
    prefix: -s
- id: l
  doc: ':    Ligand concentration in molar =  mol / l = mol / dm^3 in the cell [1e-3]'
  type: string
  inputBinding:
    prefix: -L
- id: b
  doc: ':    Bonus energy for binding the ligand (>=0, in kcal/mol). With -M, specifying
    -B will re-compute the monomer<->dimer transition matrix, else the existing one
    is used. [9.59]'
  type: string
  inputBinding:
    prefix: -B
- id: f
  doc: ':       Folding rate of RNA in s^-1 (pre-exponential factor). [1e6]'
  type: boolean
  inputBinding:
    prefix: -F
- id: d
  doc: ':       Dimerization rate in (M s)^-1 (pre-exponential factor). [1.7e5]'
  type: boolean
  inputBinding:
    prefix: -D
- id: t
  doc: ':    Simulation time. [1e16]'
  type: string
  inputBinding:
    prefix: -t
- id: f
  doc: ':       Force run, even if a lock file exists. If a lock file is found and
    -f is not given, the user is promted to confirm the run.'
  type: boolean
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- kinSimRiboswitch
