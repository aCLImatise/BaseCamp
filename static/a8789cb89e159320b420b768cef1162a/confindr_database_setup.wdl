version 1.0

task ConfindrDatabaseSetup {
  input {
    Directory? output_folder
    File? secret_file
  }
  command <<<
    confindr_database_setup \
      ~{if defined(output_folder) then ("--output_folder " +  '"' + output_folder + '"') else ""} \
      ~{if defined(secret_file) then ("--secret_file " +  '"' + secret_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_folder: "Path to download databases to - if folder does not\\nexist, will be created. If folder does exist, will be\\ndeleted and updated sequences downloaded. Defaults to\\n~/.confindr_db, or the CONFINDR_DB environmental\\nvariable."
    secret_file: "Path to consumer secret file for rMLST database.\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_folder = "${in_output_folder}"
  }
}