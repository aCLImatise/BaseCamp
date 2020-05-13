version 1.0

task Hmmpress {
  input {
    Boolean optionsOptions
    String? hmmHmmFile
  }
  command <<<
    hmmpress \
      ~{hmmHmmFile} \
      ~{true="-options" false="" optionsOptions}
  >>>
}