version 1.0

task Ndx2resttop {
  input {
    File? config
    File? output_top_zip_path
    File? input_top_zip_path
    String? input_ndx_path
  }
  command <<<
    ndx2resttop \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(output_top_zip_path) then ("--output_top_zip_path " +  '"' + output_top_zip_path + '"') else ""} \
      ~{if defined(input_top_zip_path) then ("--input_top_zip_path " +  '"' + input_top_zip_path + '"') else ""} \
      ~{if defined(input_ndx_path) then ("--input_ndx_path " +  '"' + input_ndx_path + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/biobb_md:3.5.1--py_0"
  }
  parameter_meta {
    config: "This file can be a YAML file, JSON file or JSON string"
    output_top_zip_path: ""
    input_top_zip_path: ""
    input_ndx_path: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_top_zip_path = "${in_output_top_zip_path}"
  }
}