version 1.0

task Editconf {
  input {
    String? config
    String? input_gro_path
    String? output_gro_path
  }
  command <<<
    editconf \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(input_gro_path) then ("--input_gro_path " +  '"' + input_gro_path + '"') else ""} \
      ~{if defined(output_gro_path) then ("--output_gro_path " +  '"' + output_gro_path + '"') else ""}
  >>>
  parameter_meta {
    config: "This file can be a YAML file, JSON file or JSON string"
    input_gro_path: ""
    output_gro_path: ""
  }
}