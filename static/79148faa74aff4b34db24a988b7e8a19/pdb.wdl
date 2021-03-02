version 1.0

task Pdb {
  input {
    File? config
    File? output_pdb_path
  }
  command <<<
    pdb \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(output_pdb_path) then ("--output_pdb_path " +  '"' + output_pdb_path + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/biobb_io:3.5.1--py_0"
  }
  parameter_meta {
    config: "This file can be a YAML file, JSON file or JSON string"
    output_pdb_path: "Path to the output PDB file. Accepted formats: pdb.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_pdb_path = "${in_output_pdb_path}"
  }
}