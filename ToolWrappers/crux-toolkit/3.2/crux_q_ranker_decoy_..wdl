version 1.0

task CruxQrankerDecoy_ {
  input {
    String crux
    String q_ranker
    String fragmentation_spectra
  }
  command <<<
    crux q_ranker decoy__ \
      ~{crux} \
      ~{q_ranker} \
      ~{fragmentation_spectra}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    crux: ""
    q_ranker: ""
    fragmentation_spectra: ""
  }
  output {
    File out_stdout = stdout()
  }
}