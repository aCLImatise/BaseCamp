version 1.0

task CruxHardklor {
  input {
    String? spectraSpectra
  }
  command <<<
    crux hardklor \
      ~{spectraSpectra}
  >>>
}