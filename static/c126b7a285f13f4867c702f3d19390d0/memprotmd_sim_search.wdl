version 1.0

task MemprotmdSimSearch {
  input {
    File? config
    File? output_simulations
  }
  command <<<
    memprotmd_sim_search \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(output_simulations) then ("--output_simulations " +  '"' + output_simulations + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/biobb_io:3.5.1--py_0"
  }
  parameter_meta {
    config: "This file can be a YAML file, JSON file or JSON string"
    output_simulations: "Path to the output JSON file. Accepted formats: json.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_simulations = "${in_output_simulations}"
  }
}