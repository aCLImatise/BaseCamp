class: CommandLineTool
id: smina.cwl
inputs:
- id: in_arg_rigid_part
  doc: '[ --receptor ] arg         rigid part of the receptor (PDBQT)'
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_flex
  doc: flexible side chains, if any (PDBQT)
  type: string?
  inputBinding:
    prefix: --flex
- id: in__arg_ligands
  doc: '[ --ligand ] arg           ligand(s)'
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_flex_res
  doc: "flexible side chains specified by comma\nseparated list of chain:resid"
  type: string?
  inputBinding:
    prefix: --flexres
- id: in_flex_dist_ligand
  doc: Ligand to use for flexdist
  type: string?
  inputBinding:
    prefix: --flexdist_ligand
- id: in_flex_dist
  doc: "set all side chains within specified distance\nto flexdist_ligand to flexible"
  type: string?
  inputBinding:
    prefix: --flexdist
- id: in_center_x
  doc: X coordinate of the center
  type: string?
  inputBinding:
    prefix: --center_x
- id: in_center_y
  doc: Y coordinate of the center
  type: string?
  inputBinding:
    prefix: --center_y
- id: in_center_z
  doc: Z coordinate of the center
  type: string?
  inputBinding:
    prefix: --center_z
- id: in_size_x
  doc: size in the X dimension (Angstroms)
  type: long?
  inputBinding:
    prefix: --size_x
- id: in_size_y
  doc: size in the Y dimension (Angstroms)
  type: long?
  inputBinding:
    prefix: --size_y
- id: in_size_z
  doc: size in the Z dimension (Angstroms)
  type: long?
  inputBinding:
    prefix: --size_z
- id: in_auto_box_ligand
  doc: Ligand to use for autobox
  type: string?
  inputBinding:
    prefix: --autobox_ligand
- id: in_auto_box_add
  doc: "Amount of buffer space to add to auto-generated\nbox (default +4 on all six\
    \ sides)"
  type: long?
  inputBinding:
    prefix: --autobox_add
- id: in_no_lig
  doc: no ligand; for sampling/minimizing flexible
  type: boolean?
  inputBinding:
    prefix: --no_lig
- id: in_scoring
  doc: specify alternative builtin scoring function
  type: string?
  inputBinding:
    prefix: --scoring
- id: in_custom_scoring
  doc: custom scoring function file
  type: File?
  inputBinding:
    prefix: --custom_scoring
- id: in_custom_atoms
  doc: custom atom type parameters file
  type: File?
  inputBinding:
    prefix: --custom_atoms
- id: in_score_only
  doc: score provided ligand pose
  type: boolean?
  inputBinding:
    prefix: --score_only
- id: in_local_only
  doc: "local search only using autobox (you probably\nwant to use --minimize)"
  type: boolean?
  inputBinding:
    prefix: --local_only
- id: in_minimize
  doc: energy minimization
  type: boolean?
  inputBinding:
    prefix: --minimize
- id: in_randomize_only
  doc: generate random poses, attempting to avoid
  type: boolean?
  inputBinding:
    prefix: --randomize_only
- id: in_accurate_line
  doc: use accurate line search
  type: boolean?
  inputBinding:
    prefix: --accurate_line
- id: in_minimize_early_term
  doc: "Stop minimization before convergence conditions\nare fully met."
  type: boolean?
  inputBinding:
    prefix: --minimize_early_term
- id: in_approximation
  doc: approximation (linear, spline, or exact) to use
  type: string?
  inputBinding:
    prefix: --approximation
- id: in_factor
  doc: "approximation factor: higher results in a\nfiner-grained approximation"
  type: string?
  inputBinding:
    prefix: --factor
- id: in_force_cap
  doc: "max allowed force; lower values more gently\nminimize clashing structures"
  type: long?
  inputBinding:
    prefix: --force_cap
- id: in_user_grid
  doc: Autodock map file for user grid data based
  type: File?
  inputBinding:
    prefix: --user_grid
- id: in_print_terms
  doc: Print all available terms with default
  type: boolean?
  inputBinding:
    prefix: --print_terms
- id: in_arg_output_file_name
  doc: '[ --out ] arg              output file name, format taken from file'
  type: File?
  inputBinding:
    prefix: -o
- id: in_log
  doc: optionally, write log file
  type: File?
  inputBinding:
    prefix: --log
- id: in_atom_terms
  doc: optionally write per-atom interaction term
  type: string?
  inputBinding:
    prefix: --atom_terms
- id: in_cpu
  doc: "the number of CPUs to use (the default is to\ntry to detect the number of\
    \ CPUs or, failing\nthat, use 1)"
  type: long?
  inputBinding:
    prefix: --cpu
- id: in_seed
  doc: explicit random seed
  type: string?
  inputBinding:
    prefix: --seed
- id: in_exhaustive_ness
  doc: "(=8)     exhaustiveness of the global search (roughly\nproportional to time)"
  type: long?
  inputBinding:
    prefix: --exhaustiveness
- id: in_num_modes
  doc: (=9)          maximum number of binding modes to generate
  type: long?
  inputBinding:
    prefix: --num_modes
- id: in_energy_range
  doc: "(=3)       maximum energy difference between the best\nbinding mode and the\
    \ worst one displayed\n(kcal/mol)"
  type: long?
  inputBinding:
    prefix: --energy_range
- id: in_min_rmsd_filter
  doc: (=1)    rmsd value used to filter final poses to remove
  type: long?
  inputBinding:
    prefix: --min_rmsd_filter
- id: in_add_h
  doc: "automatically add hydrogens in ligands (on by\ndefault)"
  type: string?
  inputBinding:
    prefix: --addH
- id: in_config
  doc: the above options can be put here
  type: string?
  inputBinding:
    prefix: --config
- id: in_help_hidden
  doc: display usage summary with hidden options
  type: boolean?
  inputBinding:
    prefix: --help_hidden
- id: in_residues
  doc: 'Scoring and minimization options:'
  type: string
  inputBinding:
    position: 0
- id: in_clashes
  doc: '--minimize_iters arg (=0)     number iterations of steepest descent; default '
  type: string
  inputBinding:
    position: 1
- id: in_calculations
  doc: --user_grid_lambda arg (=-1)  Scales user_grid and functional scoring
  type: string
  inputBinding:
    position: 0
- id: in_parameterizations
  doc: --print_atom_types            Print all available atom types
  type: string
  inputBinding:
    position: 1
- id: in_extension
  doc: --out_flex arg                output file for flexible receptor residues
  type: string
  inputBinding:
    position: 0
- id: in_values
  doc: '--atom_term_data              embedded per-atom interaction terms in output '
  type: string
  inputBinding:
    position: 1
- id: in_redundancy
  doc: -q [ --quiet ]                Suppress output messages
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_output_file_name
  doc: '[ --out ] arg              output file name, format taken from file'
  type: File?
  outputBinding:
    glob: $(inputs.in_arg_output_file_name)
hints: []
cwlVersion: v1.1
baseCommand:
- smina
