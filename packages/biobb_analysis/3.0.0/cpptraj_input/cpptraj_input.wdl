version 1.0

task CpptrajInput {
  input {
    File? config
    File? input_instructions_path
  }
  command <<<
    cpptraj_input \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(input_instructions_path) then ("--input_instructions_path " +  '"' + input_instructions_path + '"') else ""}
  >>>
  parameter_meta {
    config: "Configuration file"
    input_instructions_path: "Path of the instructions file.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}