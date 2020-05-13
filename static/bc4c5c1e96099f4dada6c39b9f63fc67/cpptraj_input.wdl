version 1.0

task CpptrajInput {
  input {
    String configConfig
    String inputInputInstructionsPath
  }
  command <<<
    cpptraj_input \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{if defined(inputInputInstructionsPath) then ("--input_instructions_path " +  '"' + inputInputInstructionsPath + '"') else ""}
  >>>
}