version 1.0

task CruxCascadesearchCruxoutput {
  input {
    String crux
    String cascade_search
    File tide_spectra_file
  }
  command <<<
    crux cascade_search crux_output_ \
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