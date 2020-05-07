version 1.0

task CruxBaristaDatabaseFragmentation spectra {
  input {
    String? searchSearchResults
  }
  command <<<
    crux barista database fragmentation spectra \
      ~{searchSearchResults}
  >>>
}