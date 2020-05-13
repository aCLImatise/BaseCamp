version 1.0

task CmconvertCmfile {
  input {
    Boolean optionsOptions
  }
  command <<<
    cmconvert cmfile \
      ~{true="-options" false="" optionsOptions}
  >>>
}