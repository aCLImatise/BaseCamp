version 1.0

task GmxRms {
  input {
    File? config
    File? input_index_path
    File? input_structure_path
    File? input_t_raj_path
    File? output_x_vg_path
  }
  command <<<
    gmx_rms \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(input_index_path) then ("--input_index_path " +  '"' + input_index_path + '"') else ""} \
      ~{if defined(input_structure_path) then ("--input_structure_path " +  '"' + input_structure_path + '"') else ""} \
      ~{if defined(input_t_raj_path) then ("--input_traj_path " +  '"' + input_t_raj_path + '"') else ""} \
      ~{if defined(output_x_vg_path) then ("--output_xvg_path " +  '"' + output_x_vg_path + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    config: "Configuration file"
    input_index_path: "Path to the GROMACS index file. Accepted formats: ndx."
    input_structure_path: "Path to the input structure file. Accepted formats: tpr, gro, g96, pdb, brk, ent."
    input_t_raj_path: "Path to the GROMACS trajectory file. Accepted formats: xtc, trr, cpt, gro, g96, pdb, tng."
    output_x_vg_path: "Path to the XVG output file. Accepted formats: xvg.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_x_vg_path = "${in_output_x_vg_path}"
  }
}