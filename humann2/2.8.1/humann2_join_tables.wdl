version 1.0

task Humann2JoinTables {
  input {
    Boolean? verbose
    Directory? the_directory_tables
    String? the_table_write
    File? file_name
    Boolean? search_subdirectories
  }
  command <<<
    humann2_join_tables \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(the_directory_tables) then ("--input " +  '"' + the_directory_tables + '"') else ""} \
      ~{if defined(the_table_write) then ("--output " +  '"' + the_table_write + '"') else ""} \
      ~{if defined(file_name) then ("--file_name " +  '"' + file_name + '"') else ""} \
      ~{if (search_subdirectories) then "--search-subdirectories" else ""}
  >>>
  parameter_meta {
    verbose: "additional output is printed"
    the_directory_tables: "the directory of tables"
    the_table_write: "the table to write"
    file_name: "only join tables with this string included in the file name"
    search_subdirectories: "search sub-directories of input folder for files\\n"
  }
  output {
    File out_stdout = stdout()
  }
}