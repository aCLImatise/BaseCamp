version 1.0

task CruxBarista {
  input {
    String database
    String fragmentation_spectra
    String search_results
  }
  command <<<
    crux barista \
      ~{database} \
      ~{fragmentation_spectra} \
      ~{search_results}
  >>>
  parameter_meta {
    database: ""
    fragmentation_spectra: ""
    search_results: ""
  }
}