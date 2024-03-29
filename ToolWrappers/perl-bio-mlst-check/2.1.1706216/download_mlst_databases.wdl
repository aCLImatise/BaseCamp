version 1.0

task DownloadMlstDatabases {
  input {
    File? config_file_containing
    Directory? directory_where_databases
    Boolean? print_version_number
  }
  command <<<
    download_mlst_databases \
      ~{if defined(config_file_containing) then ("-c " +  '"' + config_file_containing + '"') else ""} \
      ~{if defined(directory_where_databases) then ("-b " +  '"' + directory_where_databases + '"') else ""} \
      ~{if (print_version_number) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    config_file_containing: "Config file containing details of MLST databases from pubMLST"
    directory_where_databases: "Directory where MLST databases are stored [$MLST_DATABASES]"
    print_version_number: "Print version number and exit"
  }
  output {
    File out_stdout = stdout()
  }
}