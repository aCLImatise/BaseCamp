version 1.0

task CruxCascadeSearch {
  input {
    String tide_spectra_file
  }
  command <<<
    crux cascade-search \
      ~{tide_spectra_file}
  >>>
  parameter_meta {
    tide_spectra_file: ""
  }
}