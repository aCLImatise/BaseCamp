version 1.0

task CruxBullseyeCruxoutput {
  input {
    String crux
    String bullseye
    Int ms_one_spectra
  }
  command <<<
    crux bullseye crux_output_ \
      ~{crux} \
      ~{bullseye} \
      ~{ms_one_spectra}
  >>>
  parameter_meta {
    crux: ""
    bullseye: ""
    ms_one_spectra: ""
  }
  output {
    File out_stdout = stdout()
  }
}