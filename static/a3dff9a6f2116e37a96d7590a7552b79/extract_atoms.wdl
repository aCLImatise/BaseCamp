version 1.0

task ExtractAtoms {
  input {
    String? config
    String? input_structure_path
    String? output_structure_path
  }
  command <<<
    extract_atoms \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(input_structure_path) then ("--input_structure_path " +  '"' + input_structure_path + '"') else ""} \
      ~{if defined(output_structure_path) then ("--output_structure_path " +  '"' + output_structure_path + '"') else ""}
  >>>
  parameter_meta {
    config: "This file can be a YAML file, JSON file or JSON string"
    input_structure_path: "Input structure file name"
    output_structure_path: "Output structure file name"
  }
}