version 1.0

task CmstatCmfile {
  input {
    Boolean optionsOptions
  }
  command <<<
    cmstat cmfile \
      ~{true="-options" false="" optionsOptions}
  >>>
}