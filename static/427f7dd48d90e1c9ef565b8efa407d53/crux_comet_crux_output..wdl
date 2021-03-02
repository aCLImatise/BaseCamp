version 1.0

task CruxCometCruxoutput {
  input {
    String crux
    String comet
    String input_spectra
  }
  command <<<
    crux comet crux_output_ \
      ~{crux} \
      ~{comet} \
      ~{input_spectra}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    crux: ""
    comet: ""
    input_spectra: ""
  }
  output {
    File out_stdout = stdout()
  }
}