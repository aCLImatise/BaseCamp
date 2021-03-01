version 1.0

task MemprotmdSim {
  input {
    File? config
    File? output_simulation
  }
  command <<<
    memprotmd_sim \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(output_simulation) then ("--output_simulation " +  '"' + output_simulation + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/biobb_io:3.5.1--py_0"
  }
  parameter_meta {
    config: "This file can be a YAML file, JSON file or JSON string"
    output_simulation: "Path to the output simulation in a ZIP file. Accepted formats: zip.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_simulation = "${in_output_simulation}"
  }
}