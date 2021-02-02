version 1.0

task CruxTidesearchFalse {
  input {
    String crux
    String tide_search
    File tide_spectra_file
  }
  command <<<
    crux tide_search false_ \
      ~{crux} \
      ~{tide_search} \
      ~{tide_spectra_file}
  >>>
  parameter_meta {
    crux: ""
    tide_search: ""
    tide_spectra_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}