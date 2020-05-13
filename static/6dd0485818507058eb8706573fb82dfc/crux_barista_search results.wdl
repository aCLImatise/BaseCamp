version 1.0

task CruxBaristaSearch results {
  input {
    String? databaseDatabase
    String? fragmentationFragmentationSpectra
    String? searchSearchResults
  }
  command <<<
    crux barista search results \
      ~{databaseDatabase} \
      ~{fragmentationFragmentationSpectra} \
      ~{searchSearchResults}
  >>>
}