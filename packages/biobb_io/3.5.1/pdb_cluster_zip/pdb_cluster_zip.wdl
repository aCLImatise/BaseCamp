version 1.0

task PdbClusterZip {
  input {
    File? config
    File? output_pdb_zip_path
  }
  command <<<
    pdb_cluster_zip \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(output_pdb_zip_path) then ("--output_pdb_zip_path " +  '"' + output_pdb_zip_path + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/biobb_io:3.5.1--py_0"
  }
  parameter_meta {
    config: "This file can be a YAML file, JSON file or JSON string"
    output_pdb_zip_path: "Path to the ZIP or PDB file containing the output PDB files. Accepted formats: pdb, zip.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_pdb_zip_path = "${in_output_pdb_zip_path}"
  }
}