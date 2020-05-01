#!/usr/bin/env cwl-runner

baseCommand:
- smina
class: CommandLineTool
cwlVersion: v1.0
id: smina
inputs:
- doc: '[ --receptor ] arg         rigid part of the receptor (PDBQT)'
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: flexible side chains, if any (PDBQT)
  id: flex
  inputBinding:
    prefix: --flex
  type: string
- doc: '[ --ligand ] arg           ligand(s)'
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: flexible side chains specified by comma  separated list of chain:resid
  id: flex_res
  inputBinding:
    prefix: --flexres
  type: string
- doc: Ligand to use for flexdist
  id: flex_dist_ligand
  inputBinding:
    prefix: --flexdist_ligand
  type: string
- doc: set all side chains within specified distance  to flexdist_ligand to flexible
  id: flex_dist
  inputBinding:
    prefix: --flexdist
  type: string
- doc: X coordinate of the center
  id: center_x
  inputBinding:
    prefix: --center_x
  type: string
- doc: Y coordinate of the center
  id: center_y
  inputBinding:
    prefix: --center_y
  type: string
- doc: Z coordinate of the center
  id: center_z
  inputBinding:
    prefix: --center_z
  type: string
- doc: size in the X dimension (Angstroms)
  id: size_x
  inputBinding:
    prefix: --size_x
  type: string
- doc: size in the Y dimension (Angstroms)
  id: size_y
  inputBinding:
    prefix: --size_y
  type: string
- doc: size in the Z dimension (Angstroms)
  id: size_z
  inputBinding:
    prefix: --size_z
  type: string
- doc: Ligand to use for autobox
  id: auto_box_ligand
  inputBinding:
    prefix: --autobox_ligand
  type: string
- doc: Amount of buffer space to add to auto-generated box (default +4 on all six
    sides)
  id: auto_box_add
  inputBinding:
    prefix: --autobox_add
  type: string
- doc: no ligand; for sampling/minimizing flexible  residues
  id: no_lig
  inputBinding:
    prefix: --no_lig
  type: boolean
- doc: specify alternative builtin scoring function
  id: scoring
  inputBinding:
    prefix: --scoring
  type: string
- doc: custom scoring function file
  id: custom_scoring
  inputBinding:
    prefix: --custom_scoring
  type: string
- doc: custom atom type parameters file
  id: custom_atoms
  inputBinding:
    prefix: --custom_atoms
  type: string
- doc: score provided ligand pose
  id: score_only
  inputBinding:
    prefix: --score_only
  type: boolean
- doc: local search only using autobox (you probably  want to use --minimize)
  id: local_only
  inputBinding:
    prefix: --local_only
  type: boolean
- doc: energy minimization
  id: minimize
  inputBinding:
    prefix: --minimize
  type: boolean
- doc: generate random poses, attempting to avoid  clashes
  id: randomize_only
  inputBinding:
    prefix: --randomize_only
  type: boolean
- doc: (=0)     number iterations of steepest descent; default  scales with rotors
    and usually isn't sufficient for convergence
  id: minimize_iters
  inputBinding:
    prefix: --minimize_iters
  type: string
- doc: use accurate line search
  id: accurate_line
  inputBinding:
    prefix: --accurate_line
  type: boolean
- doc: Stop minimization before convergence conditions are fully met.
  id: minimize_early_term
  inputBinding:
    prefix: --minimize_early_term
  type: boolean
- doc: approximation (linear, spline, or exact) to use
  id: approximation
  inputBinding:
    prefix: --approximation
  type: string
- doc: 'approximation factor: higher results in a  finer-grained approximation'
  id: factor
  inputBinding:
    prefix: --factor
  type: string
- doc: max allowed force; lower values more gently  minimize clashing structures
  id: force_cap
  inputBinding:
    prefix: --force_cap
  type: string
- doc: Autodock map file for user grid data based  calculations
  id: user_grid
  inputBinding:
    prefix: --user_grid
  type: string
- doc: (=-1)  Scales user_grid and functional scoring
  id: user_grid_lambda
  inputBinding:
    prefix: --user_grid_lambda
  type: string
- doc: Print all available terms with default  parameterizations
  id: print_terms
  inputBinding:
    prefix: --print_terms
  type: boolean
- doc: Print all available atom types
  id: print_atom_types
  inputBinding:
    prefix: --print_atom_types
  type: boolean
- doc: '[ --out ] arg              output file name, format taken from file  extension'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: output file for flexible receptor residues
  id: out_flex
  inputBinding:
    prefix: --out_flex
  type: string
- doc: optionally, write log file
  id: log
  inputBinding:
    prefix: --log
  type: string
- doc: optionally write per-atom interaction term  values
  id: atom_terms
  inputBinding:
    prefix: --atom_terms
  type: string
- doc: embedded per-atom interaction terms in output  sd data
  id: atom_term_data
  inputBinding:
    prefix: --atom_term_data
  type: boolean
- doc: the number of CPUs to use (the default is to  try to detect the number of CPUs
    or, failing  that, use 1)
  id: cpu
  inputBinding:
    prefix: --cpu
  type: string
- doc: explicit random seed
  id: seed
  inputBinding:
    prefix: --seed
  type: string
- doc: (=8)     exhaustiveness of the global search (roughly  proportional to time)
  id: exhaustive_ness
  inputBinding:
    prefix: --exhaustiveness
  type: string
- doc: (=9)          maximum number of binding modes to generate
  id: num_modes
  inputBinding:
    prefix: --num_modes
  type: string
- doc: (=3)       maximum energy difference between the best  binding mode and the
    worst one displayed  (kcal/mol)
  id: energy_range
  inputBinding:
    prefix: --energy_range
  type: string
- doc: (=1)    rmsd value used to filter final poses to remove redundancy
  id: min_rmsd_filter
  inputBinding:
    prefix: --min_rmsd_filter
  type: string
- doc: '[ --quiet ]                Suppress output messages'
  id: q
  inputBinding:
    prefix: -q
  type: boolean
- doc: automatically add hydrogens in ligands (on by  default)
  id: add_h
  inputBinding:
    prefix: --addH
  type: string
- doc: the above options can be put here
  id: config
  inputBinding:
    prefix: --config
  type: string
- doc: display usage summary with hidden options
  id: help_hidden
  inputBinding:
    prefix: --help_hidden
  type: boolean
