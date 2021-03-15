version 1.0

task Box {
  input {
    File? config
    File? input_pdb_path
    File? output_pdb_path
  }
  command <<<
    box \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(input_pdb_path) then ("--input_pdb_path " +  '"' + input_pdb_path + '"') else ""} \
      ~{if defined(output_pdb_path) then ("--output_pdb_path " +  '"' + output_pdb_path + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/biobb_vs:3.5.0--py_0"
  }
  parameter_meta {
    config: "Configuration file"
    input_pdb_path: "PDB file containing a selection of residue numbers or PQR file containing the pocket. Accepted formats: pdb, pqr."
    output_pdb_path: "PDB including the annotation of the box center and size as REMARKs. Accepted formats: pdb.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_pdb_path = "${in_output_pdb_path}"
  }
}