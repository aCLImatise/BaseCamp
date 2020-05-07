version 1.0

task Hops {
  input {
    String configConfigFile
    String inputInput
    String modeMode
    String outputOutput
    String? hopsHops
  }
  command <<<
    hops \
      ~{hopsHops} \
      ~{if defined(configConfigFile) then ("--configFile " +  '"' + configConfigFile + '"') else ""} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(modeMode) then ("--mode " +  '"' + modeMode + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}