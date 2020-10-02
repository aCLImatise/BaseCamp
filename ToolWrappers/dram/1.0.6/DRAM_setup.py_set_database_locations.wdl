version 1.0

task DRAMsetuppySetDatabaseLocations {
  input {
    String? kegg_db_loc
  }
  command <<<
    DRAM_setup_py set_database_locations \
      ~{if defined(kegg_db_loc) then ("--kegg_db_loc " +  '"' + kegg_db_loc + '"') else ""}
  >>>
  parameter_meta {
    kegg_db_loc: ""
  }
  output {
    File out_stdout = stdout()
  }
}