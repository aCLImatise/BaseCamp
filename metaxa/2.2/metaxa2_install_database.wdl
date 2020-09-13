version 1.0

task Metaxa2InstallDatabase {
  input {
    String? specify_name_install
    String? directory_where_install
    String? repository_download_files
  }
  command <<<
    metaxa2_install_database \
      ~{if defined(specify_name_install) then ("-g " +  '"' + specify_name_install + '"') else ""} \
      ~{if defined(directory_where_install) then ("-d " +  '"' + directory_where_install + '"') else ""} \
      ~{if defined(repository_download_files) then ("-r " +  '"' + repository_download_files + '"') else ""}
  >>>
  parameter_meta {
    specify_name_install: ": Specify the name of the database to install (usually a gene name)\\nIf not specified, the program will show a list of available database options"
    directory_where_install: ": The directory where to install the database. Default is in the metaxa2_db directory in the same directory as Metaxa2 itself"
    repository_download_files: ": The repository to download the files from. Default is http://microbiology.se/sw/metaxa2_dbs"
  }
  output {
    File out_stdout = stdout()
  }
}