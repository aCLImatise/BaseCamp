version 1.0

task CruxCometDecoy_ {
  input {
    String crux
    String comet
    String input_spectra
  }
  command <<<
    crux comet decoy__ \
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