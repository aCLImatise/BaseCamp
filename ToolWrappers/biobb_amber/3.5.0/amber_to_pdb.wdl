version 1.0

task AmberToPdb {
  input {
    File? config
    File? input_top_path
    File? input_crd_path
    File? output_pdb_path
  }
  command <<<
    amber_to_pdb \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(input_top_path) then ("--input_top_path " +  '"' + input_top_path + '"') else ""} \
      ~{if defined(input_crd_path) then ("--input_crd_path " +  '"' + input_crd_path + '"') else ""} \
      ~{if defined(output_pdb_path) then ("--output_pdb_path " +  '"' + output_pdb_path + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/biobb_amber:3.5.0--py_0"
  }
  parameter_meta {
    config: "Configuration file"
    input_top_path: "AMBER topology file. Accepted formats: top, parmtop, prmtop."
    input_crd_path: "AMBER coordinates file. Accepted formats: crd, mdcrd, inpcrd."
    output_pdb_path: "Structure PDB file. Accepted formats: pdb.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_pdb_path = "${in_output_pdb_path}"
  }
}