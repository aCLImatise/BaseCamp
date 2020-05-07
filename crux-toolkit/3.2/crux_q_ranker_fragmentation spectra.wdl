version 1.0

task CruxQRankerFragmentation spectra {
  input {
    String? searchSearchResults
  }
  command <<<
    crux q-ranker fragmentation spectra \
      ~{searchSearchResults}
  >>>
}