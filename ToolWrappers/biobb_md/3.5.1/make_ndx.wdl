version 1.0

task MakeNdx {
  input {
    File? config
    String? input_ndx_path
    String? output_ndx_path
    File? input_structure_path
  }
  command <<<
    make_ndx \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(input_ndx_path) then ("--input_ndx_path " +  '"' + input_ndx_path + '"') else ""} \
      ~{if defined(output_ndx_path) then ("--output_ndx_path " +  '"' + output_ndx_path + '"') else ""} \
      ~{if defined(input_structure_path) then ("--input_structure_path " +  '"' + input_structure_path + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/biobb_md:3.5.1--py_0"
  }
  parameter_meta {
    config: "This file can be a YAML file, JSON file or JSON string"
    input_ndx_path: ""
    output_ndx_path: ""
    input_structure_path: ""
  }
  output {
    File out_stdout = stdout()
  }
}