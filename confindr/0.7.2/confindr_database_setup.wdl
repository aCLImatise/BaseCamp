version 1.0

task ConfindrDatabaseSetup {
  input {
    String? output_folder
    String? secret_file
  }
  command <<<
    confindr_database_setup \
      ~{if defined(output_folder) then ("--output_folder " +  '"' + output_folder + '"') else ""} \
      ~{if defined(secret_file) then ("--secret_file " +  '"' + secret_file + '"') else ""}
  >>>
  parameter_meta {
    output_folder: "Path to download databases to - if folder does not exist, will be created. If folder does exist, will be deleted and updated sequences downloaded. Defaults to ~/.confindr_db, or the CONFINDR_DB environmental variable."
    secret_file: "Path to consumer secret file for rMLST database."
  }
}