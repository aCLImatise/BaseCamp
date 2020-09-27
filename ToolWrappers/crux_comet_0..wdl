version 1.0

task CruxComet_ {
  input {
    String crux
    String comet
    String input_spectra
  }
  command <<<
    crux comet __ \
      ~{crux} \
      ~{comet} \
      ~{input_spectra}
  >>>
  parameter_meta {
    crux: ""
    comet: ""
    input_spectra: ""
  }
  output {
    File out_stdout = stdout()
  }
}