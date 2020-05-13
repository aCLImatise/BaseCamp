version 1.0

task CruxQRankerSearch results {
  input {
    String? fragmentationFragmentationSpectra
    String? searchSearchResults
  }
  command <<<
    crux q-ranker search results \
      ~{fragmentationFragmentationSpectra} \
      ~{searchSearchResults}
  >>>
}