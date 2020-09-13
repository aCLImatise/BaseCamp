version 1.0

task CruxLocalizemodificationCruxoutput {
  input {
    String crux
    String localize_modification
  }
  command <<<
    crux localize_modification crux_output_ \
      ~{crux} \
      ~{localize_modification}
  >>>
  parameter_meta {
    crux: ""
    localize_modification: ""
  }
  output {
    File out_stdout = stdout()
  }
}