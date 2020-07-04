version 1.0

task DownloadMlstDatabases {
  input {
    String? config_file_containing
    String? directory_where_mlst
    Boolean? print_version_number
  }
  command <<<
    download_mlst_databases \
      ~{if defined(config_file_containing) then ("-c " +  '"' + config_file_containing + '"') else ""} \
      ~{if defined(directory_where_mlst) then ("-b " +  '"' + directory_where_mlst + '"') else ""} \
      ~{true="-v" false="" print_version_number}
  >>>
  parameter_meta {
    config_file_containing: "Config file containing details of MLST databases from pubMLST"
    directory_where_mlst: "Directory where MLST databases are stored [$MLST_DATABASES]"
    print_version_number: "Print version number and exit"
  }
}