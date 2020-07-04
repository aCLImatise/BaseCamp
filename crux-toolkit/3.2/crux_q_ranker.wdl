version 1.0

task CruxQRanker {
  input {
    String fragmentation_spectra
    String search_results
  }
  command <<<
    crux q-ranker \
      ~{fragmentation_spectra} \
      ~{search_results}
  >>>
  parameter_meta {
    fragmentation_spectra: ""
    search_results: ""
  }
}