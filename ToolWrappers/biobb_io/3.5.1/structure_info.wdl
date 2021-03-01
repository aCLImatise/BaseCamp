version 1.0

task StructureInfo {
  input {
    File? config
    File? output_json_path
  }
  command <<<
    structure_info \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(output_json_path) then ("--output_json_path " +  '"' + output_json_path + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/biobb_io:3.5.1--py_0"
  }
  parameter_meta {
    config: "This file can be a YAML file, JSON file or JSON string"
    output_json_path: "Path to the output JSON file with all the structure information. Accepted formats: json.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_json_path = "${in_output_json_path}"
  }
}