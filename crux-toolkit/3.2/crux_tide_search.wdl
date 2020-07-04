version 1.0

task CruxTideSearch {
  input {
    String tide_spectra_file
  }
  command <<<
    crux tide-search \
      ~{tide_spectra_file}
  >>>
  parameter_meta {
    tide_spectra_file: ""
  }
}