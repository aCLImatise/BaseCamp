version 1.0

task CruxCascadesearchTrue {
  input {
    String crux
    String cascade_search
    File tide_spectra_file
  }
  command <<<
    crux cascade_search true_ \
      ~{crux} \
      ~{cascade_search} \
      ~{tide_spectra_file}
  >>>
  parameter_meta {
    crux: ""
    cascade_search: ""
    tide_spectra_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}