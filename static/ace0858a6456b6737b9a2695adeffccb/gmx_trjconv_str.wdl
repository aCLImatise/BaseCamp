version 1.0

task GmxTrjconvStr {
  input {
    File? config
    File? input_index_path
    File? input_structure_path
    File? input_top_path
    File? output_str_path
  }
  command <<<
    gmx_trjconv_str \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(input_index_path) then ("--input_index_path " +  '"' + input_index_path + '"') else ""} \
      ~{if defined(input_structure_path) then ("--input_structure_path " +  '"' + input_structure_path + '"') else ""} \
      ~{if defined(input_top_path) then ("--input_top_path " +  '"' + input_top_path + '"') else ""} \
      ~{if defined(output_str_path) then ("--output_str_path " +  '"' + output_str_path + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    config: "Configuration file"
    input_index_path: "Path to the GROMACS index file. Accepted formats: ndx."
    input_structure_path: "Path to the input structure file. Accepted formats: xtc, trr, cpt, gro, g96, pdb, tng."
    input_top_path: "Path to the GROMACS input topology file. Accepted formats: tpr, gro, g96, pdb, brk, ent."
    output_str_path: "Path to the output file. Accepted formats: xtc, trr, gro, g96, pdb, tng.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_str_path = "${in_output_str_path}"
  }
}