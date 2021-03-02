version 1.0

task CruxCascadesearchFalse {
  input {
    String crux
    String cascade_search
    File tide_spectra_file
  }
  command <<<
    crux cascade_search false_ \
      ~{crux} \
      ~{cascade_search} \
      ~{tide_spectra_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    crux: ""
    cascade_search: ""
    tide_spectra_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}