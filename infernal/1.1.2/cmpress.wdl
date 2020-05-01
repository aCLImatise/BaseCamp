version 1.0

task Cmpress {
  input {
    Boolean optionsOptions
    String? cmCmFile
  }
  command <<<
    cmpress \
      ~{cmCmFile} \
      ~{true="-options" false="" optionsOptions}
  >>>
}