version 1.0

task ConfindrDatabaseSetup {
  input {
    String outputOutputFolder
    String secretSecretFile
  }
  command <<<
    confindr_database_setup \
      ~{if defined(outputOutputFolder) then ("--output_folder " +  '"' + outputOutputFolder + '"') else ""} \
      ~{if defined(secretSecretFile) then ("--secret_file " +  '"' + secretSecretFile + '"') else ""}
  >>>
}