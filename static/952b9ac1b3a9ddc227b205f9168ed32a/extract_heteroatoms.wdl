version 1.0

task ExtractHeteroatoms {
  input {
    String? config
    String? input_structure_path
    String? output_heteroatom_path
  }
  command <<<
    extract_heteroatoms \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(input_structure_path) then ("--input_structure_path " +  '"' + input_structure_path + '"') else ""} \
      ~{if defined(output_heteroatom_path) then ("--output_heteroatom_path " +  '"' + output_heteroatom_path + '"') else ""}
  >>>
  parameter_meta {
    config: "This file can be a YAML file, JSON file or JSON string"
    input_structure_path: "Input structure file path. Accepted formats: pdb."
    output_heteroatom_path: "Output heteroatom file path. Accepted formats: pdb."
  }
}