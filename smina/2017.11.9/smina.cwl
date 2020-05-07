class: CommandLineTool
id: smina.cwl
inputs:
- id: r
  doc: '[ --receptor ] arg         rigid part of the receptor (PDBQT)'
  type: boolean
  inputBinding:
    prefix: -r
- id: flex
  doc: flexible side chains, if any (PDBQT)
  type: string
  inputBinding:
    prefix: --flex
- id: l
  doc: '[ --ligand ] arg           ligand(s)'
  type: boolean
  inputBinding:
    prefix: -l
- id: flex_res
  doc: flexible side chains specified by comma  separated list of chain:resid
  type: string
  inputBinding:
    prefix: --flexres
- id: flex_dist_ligand
  doc: Ligand to use for flexdist
  type: string
  inputBinding:
    prefix: --flexdist_ligand
- id: flex_dist
  doc: set all side chains within specified distance  to flexdist_ligand to flexible
  type: string
  inputBinding:
    prefix: --flexdist
- id: center_x
  doc: X coordinate of the center
  type: string
  inputBinding:
    prefix: --center_x
- id: center_y
  doc: Y coordinate of the center
  type: string
  inputBinding:
    prefix: --center_y
- id: center_z
  doc: Z coordinate of the center
  type: string
  inputBinding:
    prefix: --center_z
- id: size_x
  doc: size in the X dimension (Angstroms)
  type: string
  inputBinding:
    prefix: --size_x
- id: size_y
  doc: size in the Y dimension (Angstroms)
  type: string
  inputBinding:
    prefix: --size_y
- id: size_z
  doc: size in the Z dimension (Angstroms)
  type: string
  inputBinding:
    prefix: --size_z
- id: auto_box_ligand
  doc: Ligand to use for autobox
  type: string
  inputBinding:
    prefix: --autobox_ligand
- id: auto_box_add
  doc: Amount of buffer space to add to auto-generated box (default +4 on all six
    sides)
  type: string
  inputBinding:
    prefix: --autobox_add
- id: no_lig
  doc: no ligand; for sampling/minimizing flexible  residues
  type: boolean
  inputBinding:
    prefix: --no_lig
- id: scoring
  doc: specify alternative builtin scoring function
  type: string
  inputBinding:
    prefix: --scoring
- id: custom_scoring
  doc: custom scoring function file
  type: string
  inputBinding:
    prefix: --custom_scoring
- id: custom_atoms
  doc: custom atom type parameters file
  type: string
  inputBinding:
    prefix: --custom_atoms
- id: score_only
  doc: score provided ligand pose
  type: boolean
  inputBinding:
    prefix: --score_only
- id: local_only
  doc: local search only using autobox (you probably  want to use --minimize)
  type: boolean
  inputBinding:
    prefix: --local_only
- id: minimize
  doc: energy minimization
  type: boolean
  inputBinding:
    prefix: --minimize
- id: randomize_only
  doc: generate random poses, attempting to avoid  clashes
  type: boolean
  inputBinding:
    prefix: --randomize_only
- id: minimize_iters
  doc: (=0)     number iterations of steepest descent; default  scales with rotors
    and usually isn't sufficient for convergence
  type: string
  inputBinding:
    prefix: --minimize_iters
- id: accurate_line
  doc: use accurate line search
  type: boolean
  inputBinding:
    prefix: --accurate_line
- id: minimize_early_term
  doc: Stop minimization before convergence conditions are fully met.
  type: boolean
  inputBinding:
    prefix: --minimize_early_term
- id: approximation
  doc: approximation (linear, spline, or exact) to use
  type: string
  inputBinding:
    prefix: --approximation
- id: factor
  doc: 'approximation factor: higher results in a  finer-grained approximation'
  type: string
  inputBinding:
    prefix: --factor
- id: force_cap
  doc: max allowed force; lower values more gently  minimize clashing structures
  type: string
  inputBinding:
    prefix: --force_cap
- id: user_grid
  doc: Autodock map file for user grid data based  calculations
  type: string
  inputBinding:
    prefix: --user_grid
- id: user_grid_lambda
  doc: (=-1)  Scales user_grid and functional scoring
  type: string
  inputBinding:
    prefix: --user_grid_lambda
- id: print_terms
  doc: Print all available terms with default  parameterizations
  type: boolean
  inputBinding:
    prefix: --print_terms
- id: print_atom_types
  doc: Print all available atom types
  type: boolean
  inputBinding:
    prefix: --print_atom_types
- id: o
  doc: '[ --out ] arg              output file name, format taken from file  extension'
  type: boolean
  inputBinding:
    prefix: -o
- id: out_flex
  doc: output file for flexible receptor residues
  type: string
  inputBinding:
    prefix: --out_flex
- id: log
  doc: optionally, write log file
  type: string
  inputBinding:
    prefix: --log
- id: atom_terms
  doc: optionally write per-atom interaction term  values
  type: string
  inputBinding:
    prefix: --atom_terms
- id: atom_term_data
  doc: embedded per-atom interaction terms in output  sd data
  type: boolean
  inputBinding:
    prefix: --atom_term_data
- id: cpu
  doc: the number of CPUs to use (the default is to  try to detect the number of CPUs
    or, failing  that, use 1)
  type: string
  inputBinding:
    prefix: --cpu
- id: seed
  doc: explicit random seed
  type: string
  inputBinding:
    prefix: --seed
- id: exhaustive_ness
  doc: (=8)     exhaustiveness of the global search (roughly  proportional to time)
  type: string
  inputBinding:
    prefix: --exhaustiveness
- id: num_modes
  doc: (=9)          maximum number of binding modes to generate
  type: string
  inputBinding:
    prefix: --num_modes
- id: energy_range
  doc: (=3)       maximum energy difference between the best  binding mode and the
    worst one displayed  (kcal/mol)
  type: string
  inputBinding:
    prefix: --energy_range
- id: min_rmsd_filter
  doc: (=1)    rmsd value used to filter final poses to remove redundancy
  type: string
  inputBinding:
    prefix: --min_rmsd_filter
- id: q
  doc: '[ --quiet ]                Suppress output messages'
  type: boolean
  inputBinding:
    prefix: -q
- id: add_h
  doc: automatically add hydrogens in ligands (on by  default)
  type: string
  inputBinding:
    prefix: --addH
- id: config
  doc: the above options can be put here
  type: string
  inputBinding:
    prefix: --config
- id: help_hidden
  doc: display usage summary with hidden options
  type: boolean
  inputBinding:
    prefix: --help_hidden
outputs: []
cwlVersion: v1.1
baseCommand:
- smina
