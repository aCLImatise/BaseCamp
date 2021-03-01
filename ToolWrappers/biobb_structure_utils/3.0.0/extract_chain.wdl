version 1.0

task ExtractChain {
  input {
    File? config
    File? input_structure_path
    File? output_structure_path
  }
  command <<<
    extract_chain \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(input_structure_path) then ("--input_structure_path " +  '"' + input_structure_path + '"') else ""} \
      ~{if defined(output_structure_path) then ("--output_structure_path " +  '"' + output_structure_path + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    config: "This file can be a YAML file, JSON file or JSON string"
    input_structure_path: "Input structure file path. Accepted formats: pdb."
    output_structure_path: "Output structure file path. Accepted formats: pdb.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_structure_path = "${in_output_structure_path}"
  }
}