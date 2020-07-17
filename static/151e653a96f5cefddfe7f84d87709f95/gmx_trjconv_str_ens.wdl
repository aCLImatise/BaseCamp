version 1.0

task GmxTrjconvStrEns {
  input {
    String? config
    String? input_index_path
    String? input_t_raj_path
    String? input_top_path
    String? output_str_ens_path
  }
  command <<<
    gmx_trjconv_str_ens \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(input_index_path) then ("--input_index_path " +  '"' + input_index_path + '"') else ""} \
      ~{if defined(input_t_raj_path) then ("--input_traj_path " +  '"' + input_t_raj_path + '"') else ""} \
      ~{if defined(input_top_path) then ("--input_top_path " +  '"' + input_top_path + '"') else ""} \
      ~{if defined(output_str_ens_path) then ("--output_str_ens_path " +  '"' + output_str_ens_path + '"') else ""}
  >>>
  parameter_meta {
    config: "Configuration file"
    input_index_path: "Path to the GROMACS index file. Accepted formats: ndx."
    input_t_raj_path: "Path to the GROMACS trajectory file. Accepted formats: xtc, trr, cpt, gro, g96, pdb, tng."
    input_top_path: "Path to the GROMACS input topology file. Accepted formats: tpr, gro, g96, pdb, brk, ent."
    output_str_ens_path: "Path to the output file. Accepted formats: zip."
  }
}