version 1.0

task Memembed {
  input {
    File? output_pdb_file
    String? comma_separated_list
    Boolean? output_chains_regardless
    File? use_alternative_file
    String? comma_seperated_list_helix
    String? comma_seperated_list_skip
    String? chain_topology_refers
    Int? maximum_cbcb_distance
    Int? threads_to_use
    Int? search_type_algorithm
    Int? optimise_membrane_thickness
    String? location_nterminal_first
    Boolean? target_is_betabarrel
    Boolean? force_target_span
    Boolean? draw_lines_representing
    Boolean? just_compute_energy
    Boolean? just_compute_helix
  }
  command <<<
    memembed \
      ~{if defined(output_pdb_file) then ("-o " +  '"' + output_pdb_file + '"') else ""} \
      ~{if defined(comma_separated_list) then ("-c " +  '"' + comma_separated_list + '"') else ""} \
      ~{if (output_chains_regardless) then "-x" else ""} \
      ~{if defined(use_alternative_file) then ("-m " +  '"' + use_alternative_file + '"') else ""} \
      ~{if defined(comma_seperated_list_helix) then ("-t " +  '"' + comma_seperated_list_helix + '"') else ""} \
      ~{if defined(comma_seperated_list_skip) then ("-f " +  '"' + comma_seperated_list_skip + '"') else ""} \
      ~{if defined(chain_topology_refers) then ("-r " +  '"' + chain_topology_refers + '"') else ""} \
      ~{if defined(maximum_cbcb_distance) then ("-v " +  '"' + maximum_cbcb_distance + '"') else ""} \
      ~{if defined(threads_to_use) then ("-a " +  '"' + threads_to_use + '"') else ""} \
      ~{if defined(search_type_algorithm) then ("-s " +  '"' + search_type_algorithm + '"') else ""} \
      ~{if defined(optimise_membrane_thickness) then ("-q " +  '"' + optimise_membrane_thickness + '"') else ""} \
      ~{if defined(location_nterminal_first) then ("-n " +  '"' + location_nterminal_first + '"') else ""} \
      ~{if (target_is_betabarrel) then "-b" else ""} \
      ~{if (force_target_span) then "-l" else ""} \
      ~{if (draw_lines_representing) then "-p" else ""} \
      ~{if (just_compute_energy) then "-e" else ""} \
      ~{if (just_compute_helix) then "-z" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_pdb_file: "Output pdb file. Default <input pdb file>_EMBED.pdb"
    comma_separated_list: "Comma separated list of transmembrane chains. Default all"
    output_chains_regardless: "Output all chains regardless of chains passed by -c parameter."
    use_alternative_file: "Use alternative potential file."
    comma_seperated_list_helix: "Comma seperated list of helix boundaries used to calculate helix tilt angles."
    comma_seperated_list_skip: "Comma seperated list of residues to skip."
    chain_topology_refers: "Chain that topology refers to. Default 'A'"
    maximum_cbcb_distance: "Maximum Cb-Cb distance to allow."
    threads_to_use: "Threads to use."
    search_type_algorithm: "Search type. 0 = Genetic algorithm, 1 = Grid, 2 = Direct, 3 = GA repeated 5 times. Default 0."
    optimise_membrane_thickness: "Optimise membrane thickness. 0 = Do not optimise, 1 = After orientation, 2 = Do not orientate. Default 0."
    location_nterminal_first: "Location of N-terminal (first residue of first chain)."
    target_is_betabarrel: "Target is a beta-barrel."
    force_target_span: "Force target to span membrane."
    draw_lines_representing: "Draw lines representing polar head groups."
    just_compute_energy: "Just compute energy."
    just_compute_helix: "Just compute helix tilt angles."
  }
  output {
    File out_stdout = stdout()
  }
}