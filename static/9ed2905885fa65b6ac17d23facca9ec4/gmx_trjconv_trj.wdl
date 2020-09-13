version 1.0

task GmxTrjconvTrj {
  input {
    File? config
    File? input_index_path
    File? input_t_raj_path
    File? output_t_raj_path
  }
  command <<<
    gmx_trjconv_trj \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(input_index_path) then ("--input_index_path " +  '"' + input_index_path + '"') else ""} \
      ~{if defined(input_t_raj_path) then ("--input_traj_path " +  '"' + input_t_raj_path + '"') else ""} \
      ~{if defined(output_t_raj_path) then ("--output_traj_path " +  '"' + output_t_raj_path + '"') else ""}
  >>>
  parameter_meta {
    config: "Configuration file"
    input_index_path: "Path to the GROMACS index file. Accepted formats: ndx."
    input_t_raj_path: "Path to the GROMACS trajectory file. Accepted formats: xtc, trr, cpt, gro, g96, pdb, tng."
    output_t_raj_path: "Path to the output file. Accepted formats: xtc, trr, gro, g96, pdb, tng.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_t_raj_path = "${in_output_t_raj_path}"
  }
}