version 1.0

task CruxBullseye {
  input {
    String ms_one_spectra
    String ms_two_spectra
  }
  command <<<
    crux bullseye \
      ~{ms_one_spectra} \
      ~{ms_two_spectra}
  >>>
  parameter_meta {
    ms_one_spectra: ""
    ms_two_spectra: ""
  }
}