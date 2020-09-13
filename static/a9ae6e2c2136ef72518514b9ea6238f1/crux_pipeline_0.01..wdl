version 1.0

task CruxPipeline01 {
  input {
    String crux
    String pipeline
    String mass_spectra
  }
  command <<<
    crux pipeline __01_ \
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