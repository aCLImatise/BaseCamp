version 1.0

task CatPdb {
  input {
    File? config
    Int? input_structure_one
    Int? input_structure_two
    File? output_structure_path
  }
  command <<<
    cat_pdb \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(input_structure_one) then ("--input_structure1 " +  '"' + input_structure_one + '"') else ""} \
      ~{if defined(input_structure_two) then ("--input_structure2 " +  '"' + input_structure_two + '"') else ""} \
      ~{if defined(output_structure_path) then ("--output_structure_path " +  '"' + output_structure_path + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    config: "This file can be a YAML file, JSON file or JSON string"
    input_structure_one: "Input structure 1 file path. Accepted formats: pdb."
    input_structure_two: "Input structure 2 file path. Accepted formats: pdb."
    output_structure_path: "Output structure file path. Accepted formats: pdb.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_structure_path = "${in_output_structure_path}"
  }
}