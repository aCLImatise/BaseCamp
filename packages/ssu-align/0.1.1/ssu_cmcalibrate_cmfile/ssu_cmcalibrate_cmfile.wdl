version 1.0

task SsucmcalibrateCmfile {
  input {
    Boolean? options
  }
  command <<<
    ssu_cmcalibrate cmfile \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}