version 1.0

task CruxQrankerCruxoutput {
  input {
    String crux
    String q_ranker
    String fragmentation_spectra
  }
  command <<<
    crux q_ranker crux_output_ \
      ~{crux} \
      ~{q_ranker} \
      ~{fragmentation_spectra}
  >>>
  parameter_meta {
    crux: ""
    q_ranker: ""
    fragmentation_spectra: ""
  }
  output {
    File out_stdout = stdout()
  }
}