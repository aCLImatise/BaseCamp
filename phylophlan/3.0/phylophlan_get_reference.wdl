version 1.0

task PhylophlanGetReference {
  input {
    String getGet
    Boolean listListClades
    Boolean databaseDatabaseUpdate
    String outputOutputFileExtension
    String outputOutput
    String howHowMany
    String genbankGenbankMapping
    Boolean verboseVerbose
  }
  command <<<
    phylophlan_get_reference \
      ~{if defined(getGet) then ("--get " +  '"' + getGet + '"') else ""} \
      ~{true="--list_clades" false="" listListClades} \
      ~{true="--database_update" false="" databaseDatabaseUpdate} \
      ~{if defined(outputOutputFileExtension) then ("--output_file_extension " +  '"' + outputOutputFileExtension + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(howHowMany) then ("--how_many " +  '"' + howHowMany + '"') else ""} \
      ~{if defined(genbankGenbankMapping) then ("--genbank_mapping " +  '"' + genbankGenbankMapping + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}