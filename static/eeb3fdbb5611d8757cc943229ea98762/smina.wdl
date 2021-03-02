version 1.0

task Smina {
  input {
    Boolean? arg_rigid_part
    String? flex
    Boolean? _arg_ligands
    String? flex_res
    String? flex_dist_ligand
    String? flex_dist
    String? center_x
    String? center_y
    String? center_z
    Int? size_x
    Int? size_y
    Int? size_z
    String? auto_box_ligand
    Int? auto_box_add
    Boolean? no_lig
    String? scoring
    File? custom_scoring
    File? custom_atoms
    Boolean? score_only
    Boolean? local_only
    Boolean? minimize
    Boolean? randomize_only
    Boolean? accurate_line
    Boolean? minimize_early_term
    String? approximation
    String? factor
    Int? force_cap
    File? user_grid
    Boolean? print_terms
    File? arg_output_file_name
    File? log
    String? atom_terms
    Int? cpu
    String? seed
    Int? exhaustive_ness
    Int? num_modes
    Int? energy_range
    Int? min_rmsd_filter
    String? add_h
    String? config
    Boolean? help_hidden
    String residues
    String clashes
    String calculations
    String parameterizations
    String extension
    String values
    String redundancy
  }
  command <<<
    smina \
      ~{residues} \
      ~{clashes} \
      ~{calculations} \
      ~{parameterizations} \
      ~{extension} \
      ~{values} \
      ~{redundancy} \
      ~{if (arg_rigid_part) then "-r" else ""} \
      ~{if defined(flex) then ("--flex " +  '"' + flex + '"') else ""} \
      ~{if (_arg_ligands) then "-l" else ""} \
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
      ~{if (no_lig) then "--no_lig" else ""} \
      ~{if defined(scoring) then ("--scoring " +  '"' + scoring + '"') else ""} \
      ~{if defined(custom_scoring) then ("--custom_scoring " +  '"' + custom_scoring + '"') else ""} \
      ~{if defined(custom_atoms) then ("--custom_atoms " +  '"' + custom_atoms + '"') else ""} \
      ~{if (score_only) then "--score_only" else ""} \
      ~{if (local_only) then "--local_only" else ""} \
      ~{if (minimize) then "--minimize" else ""} \
      ~{if (randomize_only) then "--randomize_only" else ""} \
      ~{if (accurate_line) then "--accurate_line" else ""} \
      ~{if (minimize_early_term) then "--minimize_early_term" else ""} \
      ~{if defined(approximation) then ("--approximation " +  '"' + approximation + '"') else ""} \
      ~{if defined(factor) then ("--factor " +  '"' + factor + '"') else ""} \
      ~{if defined(force_cap) then ("--force_cap " +  '"' + force_cap + '"') else ""} \
      ~{if defined(user_grid) then ("--user_grid " +  '"' + user_grid + '"') else ""} \
      ~{if (print_terms) then "--print_terms" else ""} \
      ~{if (arg_output_file_name) then "-o" else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(atom_terms) then ("--atom_terms " +  '"' + atom_terms + '"') else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(exhaustive_ness) then ("--exhaustiveness " +  '"' + exhaustive_ness + '"') else ""} \
      ~{if defined(num_modes) then ("--num_modes " +  '"' + num_modes + '"') else ""} \
      ~{if defined(energy_range) then ("--energy_range " +  '"' + energy_range + '"') else ""} \
      ~{if defined(min_rmsd_filter) then ("--min_rmsd_filter " +  '"' + min_rmsd_filter + '"') else ""} \
      ~{if defined(add_h) then ("--addH " +  '"' + add_h + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if (help_hidden) then "--help_hidden" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    arg_rigid_part: "[ --receptor ] arg         rigid part of the receptor (PDBQT)"
    flex: "flexible side chains, if any (PDBQT)"
    _arg_ligands: "[ --ligand ] arg           ligand(s)"
    flex_res: "flexible side chains specified by comma\\nseparated list of chain:resid"
    flex_dist_ligand: "Ligand to use for flexdist"
    flex_dist: "set all side chains within specified distance\\nto flexdist_ligand to flexible"
    center_x: "X coordinate of the center"
    center_y: "Y coordinate of the center"
    center_z: "Z coordinate of the center"
    size_x: "size in the X dimension (Angstroms)"
    size_y: "size in the Y dimension (Angstroms)"
    size_z: "size in the Z dimension (Angstroms)"
    auto_box_ligand: "Ligand to use for autobox"
    auto_box_add: "Amount of buffer space to add to auto-generated\\nbox (default +4 on all six sides)"
    no_lig: "no ligand; for sampling/minimizing flexible"
    scoring: "specify alternative builtin scoring function"
    custom_scoring: "custom scoring function file"
    custom_atoms: "custom atom type parameters file"
    score_only: "score provided ligand pose"
    local_only: "local search only using autobox (you probably\\nwant to use --minimize)"
    minimize: "energy minimization"
    randomize_only: "generate random poses, attempting to avoid"
    accurate_line: "use accurate line search"
    minimize_early_term: "Stop minimization before convergence conditions\\nare fully met."
    approximation: "approximation (linear, spline, or exact) to use"
    factor: "approximation factor: higher results in a\\nfiner-grained approximation"
    force_cap: "max allowed force; lower values more gently\\nminimize clashing structures"
    user_grid: "Autodock map file for user grid data based"
    print_terms: "Print all available terms with default"
    arg_output_file_name: "[ --out ] arg              output file name, format taken from file"
    log: "optionally, write log file"
    atom_terms: "optionally write per-atom interaction term"
    cpu: "the number of CPUs to use (the default is to\\ntry to detect the number of CPUs or, failing\\nthat, use 1)"
    seed: "explicit random seed"
    exhaustive_ness: "(=8)     exhaustiveness of the global search (roughly\\nproportional to time)"
    num_modes: "(=9)          maximum number of binding modes to generate"
    energy_range: "(=3)       maximum energy difference between the best\\nbinding mode and the worst one displayed\\n(kcal/mol)"
    min_rmsd_filter: "(=1)    rmsd value used to filter final poses to remove"
    add_h: "automatically add hydrogens in ligands (on by\\ndefault)"
    config: "the above options can be put here"
    help_hidden: "display usage summary with hidden options"
    residues: "Scoring and minimization options:"
    clashes: "--minimize_iters arg (=0)     number iterations of steepest descent; default "
    calculations: "--user_grid_lambda arg (=-1)  Scales user_grid and functional scoring"
    parameterizations: "--print_atom_types            Print all available atom types"
    extension: "--out_flex arg                output file for flexible receptor residues"
    values: "--atom_term_data              embedded per-atom interaction terms in output "
    redundancy: "-q [ --quiet ]                Suppress output messages"
  }
  output {
    File out_stdout = stdout()
    File out_arg_output_file_name = "${in_arg_output_file_name}"
  }
}