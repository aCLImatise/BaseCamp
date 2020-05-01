version 1.0

task Hmmconvert {
  input {
    Boolean optionsOptions
    String? hmmHmmFile
  }
  command <<<
    hmmconvert \
      ~{hmmHmmFile} \
      ~{true="-options" false="" optionsOptions}
  >>>
}