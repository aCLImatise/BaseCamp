version 1.0

task KrocusDatabaseDownloader {
  input {
    Boolean listListSpecies
    String speciesSpecies
    String outputOutputDirectory
    Boolean verboseVerbose
  }
  command <<<
    krocus_database_downloader \
      ~{true="--list_species" false="" listListSpecies} \
      ~{if defined(speciesSpecies) then ("--species " +  '"' + speciesSpecies + '"') else ""} \
      ~{if defined(outputOutputDirectory) then ("--output_directory " +  '"' + outputOutputDirectory + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}