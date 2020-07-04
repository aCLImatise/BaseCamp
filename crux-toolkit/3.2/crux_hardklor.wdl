version 1.0

task CruxHardklor {
  input {
    String spectra
  }
  command <<<
    crux hardklor \
      ~{spectra}
  >>>
  parameter_meta {
    spectra: ""
  }
}