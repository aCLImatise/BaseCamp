version 1.0

task Hmmstat {
  input {
    Boolean optionsOptions
    String? hmmHmmFile
  }
  command <<<
    hmmstat \
      ~{hmmHmmFile} \
      ~{true="-options" false="" optionsOptions}
  >>>
}