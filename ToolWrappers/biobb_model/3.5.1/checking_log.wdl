version 1.0

task CheckingLog {
  input {
    File? config
    File? input_pdb_path
    File? output_log_path
  }
  command <<<
    checking_log \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(input_pdb_path) then ("--input_pdb_path " +  '"' + input_pdb_path + '"') else ""} \
      ~{if defined(output_log_path) then ("--output_log_path " +  '"' + output_log_path + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/biobb_model:3.5.1--py_1"
  }
  parameter_meta {
    config: "This file can be a YAML file, JSON file or JSON string"
    input_pdb_path: "Input PDB file name"
    output_log_path: "Output log file name\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_log_path = "${in_output_log_path}"
  }
}