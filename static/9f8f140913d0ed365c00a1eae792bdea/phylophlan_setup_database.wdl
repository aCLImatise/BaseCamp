version 1.0

task PhylophlanSetupDatabase {
  input {
    String inputInput
    String getGetCoreProteins
    Boolean databaseDatabaseUpdate
    String outputOutput
    String dbDbName
    String inputInputExtension
    String dbDbType
    String outputOutputExtension
    Boolean overwriteOverwrite
    Boolean verboseVerbose
  }
  command <<<
    phylophlan_setup_database \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(getGetCoreProteins) then ("--get_core_proteins " +  '"' + getGetCoreProteins + '"') else ""} \
      ~{true="--database_update" false="" databaseDatabaseUpdate} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(dbDbName) then ("--db_name " +  '"' + dbDbName + '"') else ""} \
      ~{if defined(inputInputExtension) then ("--input_extension " +  '"' + inputInputExtension + '"') else ""} \
      ~{if defined(dbDbType) then ("--db_type " +  '"' + dbDbType + '"') else ""} \
      ~{if defined(outputOutputExtension) then ("--output_extension " +  '"' + outputOutputExtension + '"') else ""} \
      ~{true="--overwrite" false="" overwriteOverwrite} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}