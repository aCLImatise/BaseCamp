version 1.0

task CruxPipeline {
  input {
    String mass_spectra
  }
  command <<<
    crux pipeline \
      ~{mass_spectra}
  >>>
  parameter_meta {
    mass_spectra: ""
  }
}