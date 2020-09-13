version 1.0

task ExtractHeteroatoms {
  input {
    File? config
    File? input_structure_path
    File? output_heteroatom_path
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
    output_heteroatom_path: "Output heteroatom file path. Accepted formats: pdb.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_heteroatom_path = "${in_output_heteroatom_path}"
  }
}