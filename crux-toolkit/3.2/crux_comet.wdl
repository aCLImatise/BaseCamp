version 1.0

task CruxComet {
  input {
    String input_spectra
  }
  command <<<
    crux comet \
      ~{input_spectra}
  >>>
  parameter_meta {
    input_spectra: ""
  }
}