version 1.0

task Ndx2resttop {
  input {
    String? config
    String? input_ndx_path
    String? input_top_zip_path
    String? output_top_zip_path
  }
  command <<<
    ndx2resttop \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(input_ndx_path) then ("--input_ndx_path " +  '"' + input_ndx_path + '"') else ""} \
      ~{if defined(input_top_zip_path) then ("--input_top_zip_path " +  '"' + input_top_zip_path + '"') else ""} \
      ~{if defined(output_top_zip_path) then ("--output_top_zip_path " +  '"' + output_top_zip_path + '"') else ""}
  >>>
  parameter_meta {
    config: "This file can be a YAML file, JSON file or JSON string"
    input_ndx_path: ""
    input_top_zip_path: ""
    output_top_zip_path: ""
  }
}