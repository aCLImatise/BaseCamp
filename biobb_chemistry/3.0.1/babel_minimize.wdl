version 1.0

task BabelMinimize {
  input {
    String? config
    String? input_path
    String? output_path
  }
  command <<<
    babel_minimize \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(input_path) then ("--input_path " +  '"' + input_path + '"') else ""} \
      ~{if defined(output_path) then ("--output_path " +  '"' + output_path + '"') else ""}
  >>>
  parameter_meta {
    config: "Configuration file"
    input_path: "Path to the input file. Accepted formats: pdb, mol2."
    output_path: "Path to the output file. Accepted formats: pdb, mol2."
  }
}