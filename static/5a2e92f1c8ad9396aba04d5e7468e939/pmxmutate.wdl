version 1.0

task Pmxmutate {
  input {
    File? config
    File? input_b_structure_path
    File? input_structure_path
    File? output_structure_path
  }
  command <<<
    pmxmutate \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(input_b_structure_path) then ("--input_b_structure_path " +  '"' + input_b_structure_path + '"') else ""} \
      ~{if defined(input_structure_path) then ("--input_structure_path " +  '"' + input_structure_path + '"') else ""} \
      ~{if defined(output_structure_path) then ("--output_structure_path " +  '"' + output_structure_path + '"') else ""}
  >>>
  parameter_meta {
    config: "This file can be a YAML file, JSON file or JSON string"
    input_b_structure_path: "Path to the mutated input structure file"
    input_structure_path: "Path to the input structure file"
    output_structure_path: "Path to the output structure file\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_structure_path = "${in_output_structure_path}"
  }
}