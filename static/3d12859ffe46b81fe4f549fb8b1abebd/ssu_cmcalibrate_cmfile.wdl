version 1.0

task SsuCmcalibrateCmfile {
  input {
    Boolean? options
  }
  command <<<
    ssu-cmcalibrate cmfile \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    options: ""
  }
}