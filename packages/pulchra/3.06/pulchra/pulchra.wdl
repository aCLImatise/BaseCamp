version 1.0

task Pulchra {
  input {
    Boolean? verbose_output_default
    Boolean? center_chain_default
    Boolean? timeseed_generator_default
    Boolean? use_pdbsg_input
    Boolean? skip_positions_default
    Boolean? detect_cisprolins_default
    Boolean? start_random_chain
    File? read_initial_coordinates
    Boolean? save_optimization_trajectory
    Float? maximum_shift_restraint
    Boolean? rearrange_backbone_atoms
    Boolean? preserve_initial_coordinates
    Boolean? skip_reconstruction_default
    Boolean? optimize_bonds_pattern
    Boolean? skip_side_chains
    Boolean? attempt_excluded_default
    Boolean? check_acid_default
    String pdb_file
  }
  command <<<
    pulchra \
      ~{pdb_file} \
      ~{if (verbose_output_default) then "-v" else ""} \
      ~{if (center_chain_default) then "-n" else ""} \
      ~{if (timeseed_generator_default) then "-x" else ""} \
      ~{if (use_pdbsg_input) then "-g" else ""} \
      ~{if (skip_positions_default) then "-c" else ""} \
      ~{if (detect_cisprolins_default) then "-p" else ""} \
      ~{if (start_random_chain) then "-r" else ""} \
      ~{if defined(read_initial_coordinates) then ("-i " +  '"' + read_initial_coordinates + '"') else ""} \
      ~{if (save_optimization_trajectory) then "-t" else ""} \
      ~{if defined(maximum_shift_restraint) then ("-u " +  '"' + maximum_shift_restraint + '"') else ""} \
      ~{if (rearrange_backbone_atoms) then "-e" else ""} \
      ~{if (preserve_initial_coordinates) then "-f" else ""} \
      ~{if (skip_reconstruction_default) then "-b" else ""} \
      ~{if (optimize_bonds_pattern) then "-q" else ""} \
      ~{if (skip_side_chains) then "-s" else ""} \
      ~{if (attempt_excluded_default) then "-o" else ""} \
      ~{if (check_acid_default) then "-z" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pulchra:3.06--h516909a_0"
  }
  parameter_meta {
    verbose_output_default: ": verbose output (default: off)"
    center_chain_default: ": center chain (default: off)"
    timeseed_generator_default: ": time-seed random number generator (default: off)"
    use_pdbsg_input: ": use PDBSG as an input format (CA=C-alpha, SC or CM=side chain c.m.)"
    skip_positions_default: ": skip C-alpha positions optimization (default: on)"
    detect_cisprolins_default: ": detect cis-prolins (default: off)"
    start_random_chain: ": start from a random chain (default: off)"
    read_initial_coordinates: ": read the initial C-alpha coordinates from a PDB file"
    save_optimization_trajectory: ": save chain optimization trajectory to file <pdb_file.pdb.trajectory>"
    maximum_shift_restraint: ": maximum shift from the restraint coordinates (default: 0.5A)"
    rearrange_backbone_atoms: ": rearrange backbone atoms (C, O are output after side chain) (default: off)"
    preserve_initial_coordinates: ": preserve initial coordinates (default: off, implies '-c' on and '-n' off)"
    skip_reconstruction_default: ": skip backbone reconstruction (default: on)"
    optimize_bonds_pattern: ": optimize backbone hydrogen bonds pattern (default: off)"
    skip_side_chains: ": skip side chains reconstruction (default: on)"
    attempt_excluded_default: ": don't attempt to fix excluded volume conflicts (default: on)"
    check_acid_default: ": don't check amino acid chirality (default: on)"
    pdb_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}