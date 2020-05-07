version 1.0

task PhylophlanMetagenomic {
  input {
    String inputInput
    String outputOutputPrefix
    String databaseDatabase
    Boolean databaseDatabaseList
    Boolean databaseDatabaseUpdate
    String inputInputExtension
    String howHowMany
    String nprocNproc
    String databaseDatabaseFolder
    Boolean onlyOnlyInput
    Boolean addAddGgb
    Boolean addAddFgb
    Boolean overwriteOverwrite
    Boolean verboseVerbose
  }
  command <<<
    phylophlan_metagenomic \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutputPrefix) then ("--output_prefix " +  '"' + outputOutputPrefix + '"') else ""} \
      ~{if defined(databaseDatabase) then ("--database " +  '"' + databaseDatabase + '"') else ""} \
      ~{true="--database_list" false="" databaseDatabaseList} \
      ~{true="--database_update" false="" databaseDatabaseUpdate} \
      ~{if defined(inputInputExtension) then ("--input_extension " +  '"' + inputInputExtension + '"') else ""} \
      ~{if defined(howHowMany) then ("--how_many " +  '"' + howHowMany + '"') else ""} \
      ~{if defined(nprocNproc) then ("--nproc " +  '"' + nprocNproc + '"') else ""} \
      ~{if defined(databaseDatabaseFolder) then ("--database_folder " +  '"' + databaseDatabaseFolder + '"') else ""} \
      ~{true="--only_input" false="" onlyOnlyInput} \
      ~{true="--add_ggb" false="" addAddGgb} \
      ~{true="--add_fgb" false="" addAddFgb} \
      ~{true="--overwrite" false="" overwriteOverwrite} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}