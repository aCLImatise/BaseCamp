version 1.0

task CruxTidesearchCruxoutput {
  input {
    String crux
    String tide_search
    File tide_spectra_file
  }
  command <<<
    crux tide_search crux_output_ \
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