version 1.0

task Drugbank {
  input {
    File? config
    File? output_sdf_path
  }
  command <<<
    drugbank \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(output_sdf_path) then ("--output_sdf_path " +  '"' + output_sdf_path + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/biobb_io:3.5.1--py_0"
  }
  parameter_meta {
    config: "This file can be a YAML file, JSON file or JSON string"
    output_sdf_path: "Path to the output SDF component file. Accepted formats: sdf.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_sdf_path = "${in_output_sdf_path}"
  }
}