version 1.0

task CruxBaristaDatabaseSearch results {
  input {
    String? fragmentationFragmentationSpectra
    String? searchSearchResults
  }
  command <<<
    crux barista database search results \
      ~{fragmentationFragmentationSpectra} \
      ~{searchSearchResults}
  >>>
}