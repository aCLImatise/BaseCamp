version 1.0

task Humann2JoinTables {
  input {
    Boolean? verbose
    String? the_directory_tables
    String? the_table_write
    File? file_name
    Boolean? search_subdirectories
  }
  command <<<
    humann2_join_tables \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(the_directory_tables) then ("--input " +  '"' + the_directory_tables + '"') else ""} \
      ~{if defined(the_table_write) then ("--output " +  '"' + the_table_write + '"') else ""} \
      ~{if defined(file_name) then ("--file_name " +  '"' + file_name + '"') else ""} \
      ~{true="--search-subdirectories" false="" search_subdirectories}
  >>>
  parameter_meta {
    verbose: "additional output is printed"
    the_directory_tables: "the directory of tables"
    the_table_write: "the table to write"
    file_name: "only join tables with this string included in the file name"
    search_subdirectories: "search sub-directories of input folder for files"
  }
}