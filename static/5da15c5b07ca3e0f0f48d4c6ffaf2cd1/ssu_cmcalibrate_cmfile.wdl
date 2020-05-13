version 1.0

task SsuCmcalibrateCmfile {
  input {
    Boolean optionsOptions
  }
  command <<<
    ssu-cmcalibrate cmfile \
      ~{true="-options" false="" optionsOptions}
  >>>
}