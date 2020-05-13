version 1.0

task CruxBullseyeMS1 spectra {
  input {
    String? ms2Ms2Spectra
  }
  command <<<
    crux bullseye MS1 spectra \
      ~{ms2Ms2Spectra}
  >>>
}