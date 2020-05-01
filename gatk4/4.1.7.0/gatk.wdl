version 1.0

task Gatk {
  input {
    Boolean gGAtkConfigFile
  }
  command <<<
    gatk \
      ~{true="--gatk-config-file" false="" gGAtkConfigFile}
  >>>
}