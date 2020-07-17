version 1.0

task Solvate {
  input {
    String? config
    String? input_solute_gro_path
    String? output_gro_path
    String? input_top_zip_path
    String? output_top_zip_path
  }
  command <<<
    solvate \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(input_solute_gro_path) then ("--input_solute_gro_path " +  '"' + input_solute_gro_path + '"') else ""} \
      ~{if defined(output_gro_path) then ("--output_gro_path " +  '"' + output_gro_path + '"') else ""} \
      ~{if defined(input_top_zip_path) then ("--input_top_zip_path " +  '"' + input_top_zip_path + '"') else ""} \
      ~{if defined(output_top_zip_path) then ("--output_top_zip_path " +  '"' + output_top_zip_path + '"') else ""}
  >>>
  parameter_meta {
    config: "This file can be a YAML file, JSON file or JSON string"
    input_solute_gro_path: ""
    output_gro_path: ""
    input_top_zip_path: ""
    output_top_zip_path: ""
  }
}