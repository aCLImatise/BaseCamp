version 1.0

task PpaniniJoinTables {
  input {
    Boolean? verbose
    Directory? the_directory_tables
    String? the_table_write
    File? file_name
    Boolean? search_subdirectories
    File? mapping_uniref
    File? mapping_cluster
    Boolean? resume
    String? scale
  }
  command <<<
    ppanini_join_tables \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(the_directory_tables) then ("--input " +  '"' + the_directory_tables + '"') else ""} \
      ~{if defined(the_table_write) then ("--output " +  '"' + the_table_write + '"') else ""} \
      ~{if defined(file_name) then ("--file_name " +  '"' + file_name + '"') else ""} \
      ~{if (search_subdirectories) then "--search-subdirectories" else ""} \
      ~{if defined(mapping_uniref) then ("--mapping-uniref " +  '"' + mapping_uniref + '"') else ""} \
      ~{if defined(mapping_cluster) then ("--mapping-cluster " +  '"' + mapping_cluster + '"') else ""} \
      ~{if (resume) then "--resume" else ""} \
      ~{if defined(scale) then ("--scale " +  '"' + scale + '"') else ""}
  >>>
  parameter_meta {
    verbose: "additional output is printed"
    the_directory_tables: "the directory of tables"
    the_table_write: "the table to write"
    file_name: "only join tables with this string included in the file name"
    search_subdirectories: "search sub-directories of input folder for files"
    mapping_uniref: "Mapping file: gene to uniref90 file"
    mapping_cluster: "Mapping file: cluster to genes file"
    resume: "bypass commands if the output files exist"
    scale: "scale the abundance table"
  }
  output {
    File out_stdout = stdout()
  }
}