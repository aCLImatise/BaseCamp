version 1.0

task CruxPipelineCruxoutput {
  input {
    String crux
    String pipeline
    String mass_spectra
  }
  command <<<
    crux pipeline crux_output_ \
      ~{crux} \
      ~{pipeline} \
      ~{mass_spectra}
  >>>
  parameter_meta {
    crux: ""
    pipeline: ""
    mass_spectra: ""
  }
  output {
    File out_stdout = stdout()
  }
}