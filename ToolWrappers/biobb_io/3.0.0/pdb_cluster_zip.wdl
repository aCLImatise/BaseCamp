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
    docker: "None"
  }
  parameter_meta {
    config: "This file can be a YAML file, JSON file or JSON string"
    output_pdb_zip_path: "Output ZIP file name\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_pdb_zip_path = "${in_output_pdb_zip_path}"
  }
}