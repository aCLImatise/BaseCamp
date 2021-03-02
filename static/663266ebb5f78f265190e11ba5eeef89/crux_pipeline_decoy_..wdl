version 1.0

task CruxPipelineDecoy_ {
  input {
    String crux
    String pipeline
    String mass_spectra
  }
  command <<<
    crux pipeline decoy__ \
      ~{crux} \
      ~{pipeline} \
      ~{mass_spectra}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    crux: ""
    pipeline: ""
    mass_spectra: ""
  }
  output {
    File out_stdout = stdout()
  }
}