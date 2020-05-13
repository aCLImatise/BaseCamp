version 1.0

task CruxBullseyeMS2 spectra {
  input {
    String? ms1Ms1Spectra
    String? ms2Ms2Spectra
  }
  command <<<
    crux bullseye MS2 spectra \
      ~{ms1Ms1Spectra} \
      ~{ms2Ms2Spectra}
  >>>
}