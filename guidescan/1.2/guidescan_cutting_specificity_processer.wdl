version 1.0

task GuidescanCuttingSpecificityProcesser {
  input {
    String databaseDatabaseDirectory
    String databaseDatabaseName
    String kmKmErsFile
    String fastFastAFilePath
    String databaseDatabaseDirectory2
    String databaseDatabaseName2
  }
  command <<<
    guidescan_cutting_specificity_processer \
      ~{if defined(databaseDatabaseDirectory) then ("--database_directory " +  '"' + databaseDatabaseDirectory + '"') else ""} \
      ~{if defined(databaseDatabaseName) then ("--database_name " +  '"' + databaseDatabaseName + '"') else ""} \
      ~{if defined(kmKmErsFile) then ("--kmers_file " +  '"' + kmKmErsFile + '"') else ""} \
      ~{if defined(fastFastAFilePath) then ("--fasta_filepath " +  '"' + fastFastAFilePath + '"') else ""} \
      ~{if defined(databaseDatabaseDirectory2) then ("--database_directory2 " +  '"' + databaseDatabaseDirectory2 + '"') else ""} \
      ~{if defined(databaseDatabaseName2) then ("--database_name2 " +  '"' + databaseDatabaseName2 + '"') else ""}
  >>>
}