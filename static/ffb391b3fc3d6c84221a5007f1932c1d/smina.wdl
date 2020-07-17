version 1.0

task Smina {
  input {
    String? flex_res
    String? flex_dist_ligand
    String? flex_dist
    String? center_x
    String? center_y
    String? center_z
    String? size_x
    String? size_y
    String? size_z
    String? auto_box_ligand
    String? auto_box_add
    Boolean? no_lig
    String? scoring
    String? custom_scoring
    String? custom_atoms
    Boolean? score_only
    Boolean? local_only
    Boolean? minimize
    Boolean? randomize_only
    String? minimize_iters
    Boolean? accurate_line
    Boolean? minimize_early_term
    String? approximation
    String? factor
    String? force_cap
    String? user_grid
    String? user_grid_lambda
    Boolean? print_terms
    Boolean? print_atom_types
    Boolean? arg_name_format
    String? out_flex
    String? log
    String? atom_terms
    Boolean? atom_term_data
    String? cpu
    String? seed
    String? exhaustive_ness
    String? num_modes
    String? energy_range
    String? min_rmsd_filter
    Boolean? suppress_output_messages
    String? add_h
    String? config
    Boolean? help_hidden
    String var_input
  }
  command <<<
    smina \
      ~{var_input} \
      ~{if defined(flex_res) then ("--flexres " +  '"' + flex_res + '"') else ""} \
      ~{if defined(flex_dist_ligand) then ("--flexdist_ligand " +  '"' + flex_dist_ligand + '"') else ""} \
      ~{if defined(flex_dist) then ("--flexdist " +  '"' + flex_dist + '"') else ""} \
      ~{if defined(center_x) then ("--center_x " +  '"' + center_x + '"') else ""} \
      ~{if defined(center_y) then ("--center_y " +  '"' + center_y + '"') else ""} \
      ~{if defined(center_z) then ("--center_z " +  '"' + center_z + '"') else ""} \
      ~{if defined(size_x) then ("--size_x " +  '"' + size_x + '"') else ""} \
      ~{if defined(size_y) then ("--size_y " +  '"' + size_y + '"') else ""} \
      ~{if defined(size_z) then ("--size_z " +  '"' + size_z + '"') else ""} \
      ~{if defined(auto_box_ligand) then ("--autobox_ligand " +  '"' + auto_box_ligand + '"') else ""} \
      ~{if defined(auto_box_add) then ("--autobox_add " +  '"' + auto_box_add + '"') else ""} \
      ~{true="--no_lig" false="" no_lig} \
      ~{if defined(scoring) then ("--scoring " +  '"' + scoring + '"') else ""} \
      ~{if defined(custom_scoring) then ("--custom_scoring " +  '"' + custom_scoring + '"') else ""} \
      ~{if defined(custom_atoms) then ("--custom_atoms " +  '"' + custom_atoms + '"') else ""} \
      ~{true="--score_only" false="" score_only} \
      ~{true="--local_only" false="" local_only} \
      ~{true="--minimize" false="" minimize} \
      ~{true="--randomize_only" false="" randomize_only} \
      ~{if defined(minimize_iters) then ("--minimize_iters " +  '"' + minimize_iters + '"') else ""} \
      ~{true="--accurate_line" false="" accurate_line} \
      ~{true="--minimize_early_term" false="" minimize_early_term} \
      ~{if defined(approximation) then ("--approximation " +  '"' + approximation + '"') else ""} \
      ~{if defined(factor) then ("--factor " +  '"' + factor + '"') else ""} \
      ~{if defined(force_cap) then ("--force_cap " +  '"' + force_cap + '"') else ""} \
      ~{if defined(user_grid) then ("--user_grid " +  '"' + user_grid + '"') else ""} \
      ~{if defined(user_grid_lambda) then ("--user_grid_lambda " +  '"' + user_grid_lambda + '"') else ""} \
      ~{true="--print_terms" false="" print_terms} \
      ~{true="--print_atom_types" false="" print_atom_types} \
      ~{true="-o" false="" arg_name_format} \
      ~{if defined(out_flex) then ("--out_flex " +  '"' + out_flex + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(atom_terms) then ("--atom_terms " +  '"' + atom_terms + '"') else ""} \
      ~{true="--atom_term_data" false="" atom_term_data} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(exhaustive_ness) then ("--exhaustiveness " +  '"' + exhaustive_ness + '"') else ""} \
      ~{if defined(num_modes) then ("--num_modes " +  '"' + num_modes + '"') else ""} \
      ~{if defined(energy_range) then ("--energy_range " +  '"' + energy_range + '"') else ""} \
      ~{if defined(min_rmsd_filter) then ("--min_rmsd_filter " +  '"' + min_rmsd_filter + '"') else ""} \
      ~{true="-q" false="" suppress_output_messages} \
      ~{if defined(add_h) then ("--addH " +  '"' + add_h + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{true="--help_hidden" false="" help_hidden}
  >>>
  parameter_meta {
    flex_res: "flexible side chains specified by comma  separated list of chain:resid"
    flex_dist_ligand: "Ligand to use for flexdist"
    flex_dist: "set all side chains within specified distance  to flexdist_ligand to flexible"
    center_x: "X coordinate of the center"
    center_y: "Y coordinate of the center"
    center_z: "Z coordinate of the center"
    size_x: "size in the X dimension (Angstroms)"
    size_y: "size in the Y dimension (Angstroms)"
    size_z: "size in the Z dimension (Angstroms)"
    auto_box_ligand: "Ligand to use for autobox"
    auto_box_add: "Amount of buffer space to add to auto-generated box (default +4 on all six sides)"
    no_lig: "no ligand; for sampling/minimizing flexible  residues"
    scoring: "specify alternative builtin scoring function"
    custom_scoring: "custom scoring function file"
    custom_atoms: "custom atom type parameters file"
    score_only: "score provided ligand pose"
    local_only: "local search only using autobox (you probably  want to use --minimize)"
    minimize: "energy minimization"
    randomize_only: "generate random poses, attempting to avoid  clashes"
    minimize_iters: "(=0)     number iterations of steepest descent; default  scales with rotors and usually isn't sufficient for convergence"
    accurate_line: "use accurate line search"
    minimize_early_term: "Stop minimization before convergence conditions are fully met."
    approximation: "approximation (linear, spline, or exact) to use"
    factor: "approximation factor: higher results in a  finer-grained approximation"
    force_cap: "max allowed force; lower values more gently  minimize clashing structures"
    user_grid: "Autodock map file for user grid data based  calculations"
    user_grid_lambda: "(=-1)  Scales user_grid and functional scoring"
    print_terms: "Print all available terms with default  parameterizations"
    print_atom_types: "Print all available atom types"
    arg_name_format: "[ --out ] arg              output file name, format taken from file  extension"
    out_flex: "output file for flexible receptor residues"
    log: "optionally, write log file"
    atom_terms: "optionally write per-atom interaction term  values"
    atom_term_data: "embedded per-atom interaction terms in output  sd data"
    cpu: "the number of CPUs to use (the default is to  try to detect the number of CPUs or, failing  that, use 1)"
    seed: "explicit random seed"
    exhaustive_ness: "(=8)     exhaustiveness of the global search (roughly  proportional to time)"
    num_modes: "(=9)          maximum number of binding modes to generate"
    energy_range: "(=3)       maximum energy difference between the best  binding mode and the worst one displayed  (kcal/mol)"
    min_rmsd_filter: "(=1)    rmsd value used to filter final poses to remove redundancy"
    suppress_output_messages: "[ --quiet ]                Suppress output messages"
    add_h: "automatically add hydrogens in ligands (on by  default)"
    config: "the above options can be put here"
    help_hidden: "display usage summary with hidden options"
    var_input: ""
  }
}