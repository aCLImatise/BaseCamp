version 1.0

task BabelMinimize {
  input {
    String configConfig
    String inputInputPath
    String outputOutputPath
  }
  command <<<
    babel_minimize \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{if defined(inputInputPath) then ("--input_path " +  '"' + inputInputPath + '"') else ""} \
      ~{if defined(outputOutputPath) then ("--output_path " +  '"' + outputOutputPath + '"') else ""}
  >>>
}