version 1.0

task GuidescanCuttingEfficiencyProcesser {
  input {
    String databaseDatabaseDirectory
    String databaseDatabaseName
    String fastFastAFilePath
    String aminoAmino
    String peptidePeptide
    String databaseDatabaseDirectory2
    String databaseDatabaseName2
  }
  command <<<
    guidescan_cutting_efficiency_processer \
      ~{if defined(databaseDatabaseDirectory) then ("--database_directory " +  '"' + databaseDatabaseDirectory + '"') else ""} \
      ~{if defined(databaseDatabaseName) then ("--database_name " +  '"' + databaseDatabaseName + '"') else ""} \
      ~{if defined(fastFastAFilePath) then ("--fasta_filepath " +  '"' + fastFastAFilePath + '"') else ""} \
      ~{if defined(aminoAmino) then ("--amino " +  '"' + aminoAmino + '"') else ""} \
      ~{if defined(peptidePeptide) then ("--peptide " +  '"' + peptidePeptide + '"') else ""} \
      ~{if defined(databaseDatabaseDirectory2) then ("--database_directory2 " +  '"' + databaseDatabaseDirectory2 + '"') else ""} \
      ~{if defined(databaseDatabaseName2) then ("--database_name2 " +  '"' + databaseDatabaseName2 + '"') else ""}
  >>>
}