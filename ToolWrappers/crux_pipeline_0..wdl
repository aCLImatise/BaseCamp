version 1.0

task CruxPipeline_ {
  input {
    String crux
    String pipeline
    String mass_spectra
  }
  command <<<
    crux pipeline __ \
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