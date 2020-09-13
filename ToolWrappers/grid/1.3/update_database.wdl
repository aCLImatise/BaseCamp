version 1.0

task UpdateDatabase {
  input {
    Boolean? grid_database_directory
    Boolean? bacterial_genomes_directory
    Boolean? prefix_new_database
    Boolean? path_file_listing
  }
  command <<<
    update_database \
      ~{if (grid_database_directory) then "-d" else ""} \
      ~{if (bacterial_genomes_directory) then "-g" else ""} \
      ~{if (prefix_new_database) then "-p" else ""} \
      ~{if (path_file_listing) then "-l" else ""}
  >>>
  parameter_meta {
    grid_database_directory: "GRiD database directory (required)"
    bacterial_genomes_directory: "Bacterial genomes directory (required)"
    prefix_new_database: "Prefix for new database (required)"
    path_file_listing: "Path to file listing specific genomes\\nfor inclusion in database [default = include all genomes in directory]"
  }
  output {
    File out_stdout = stdout()
  }
}