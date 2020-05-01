version 1.0

task Hmmindex2 {
  input {
    Boolean optionsOptions
    String? hmmHmmIndex
    String? hmmHmmFile
  }
  command <<<
    hmmindex2 \
      ~{hmmHmmIndex} \
      ~{true="-options" false="" optionsOptions} \
      ~{hmmHmmFile}
  >>>
}