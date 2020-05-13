version 1.0

task BiopetSampleconfig {
  input {
    String? sampleSampleConfig
    String? toolToolName
    String? toolTool
    String? argsArgs
  }
  command <<<
    biopet-sampleconfig \
      ~{sampleSampleConfig} \
      ~{toolToolName} \
      ~{toolTool} \
      ~{argsArgs}
  >>>
}