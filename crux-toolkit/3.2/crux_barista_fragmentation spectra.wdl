version 1.0

task CruxBaristaFragmentation spectra {
  input {
    String? databaseDatabase
    String? fragmentationFragmentationSpectra
    String? searchSearchResults
  }
  command <<<
    crux barista fragmentation spectra \
      ~{databaseDatabase} \
      ~{fragmentationFragmentationSpectra} \
      ~{searchSearchResults}
  >>>
}