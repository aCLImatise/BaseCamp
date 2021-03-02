version 1.0

task CruxTidesearchMass {
  input {
    String crux
    String tide_search
    File tide_spectra_file
  }
  command <<<
    crux tide_search mass_ \
      ~{crux} \
      ~{tide_search} \
      ~{tide_spectra_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    crux: ""
    tide_search: ""
    tide_spectra_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}