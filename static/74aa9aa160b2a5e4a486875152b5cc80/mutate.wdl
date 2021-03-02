version 1.0

task Mutate {
  input {
    File? config
    File? input_pdb_path
    File? output_pdb_path
  }
  command <<<
    mutate \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(input_pdb_path) then ("--input_pdb_path " +  '"' + input_pdb_path + '"') else ""} \
      ~{if defined(output_pdb_path) then ("--output_pdb_path " +  '"' + output_pdb_path + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    config: "This file can be a YAML file, JSON file or JSON string"
    input_pdb_path: "Input PDB file name"
    output_pdb_path: "Output PDB file name\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_pdb_path = "${in_output_pdb_path}"
  }
}