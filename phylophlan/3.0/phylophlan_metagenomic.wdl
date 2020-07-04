version 1.0

task PhylophlanMetagenomic {
  input {
    String? input_folder_containing
    String? output_prefix
    String? database
    Boolean? database_list
    Boolean? database_update
    String? input_extension
    String? how_many
    String? nproc
    String? database_folder
    Boolean? only_input
    Boolean? add_ggb
    Boolean? add_fgb
    Boolean? overwrite
    Boolean? verbose
  }
  command <<<
    phylophlan_metagenomic \
      ~{if defined(input_folder_containing) then ("--input " +  '"' + input_folder_containing + '"') else ""} \
      ~{if defined(output_prefix) then ("--output_prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{true="--database_list" false="" database_list} \
      ~{true="--database_update" false="" database_update} \
      ~{if defined(input_extension) then ("--input_extension " +  '"' + input_extension + '"') else ""} \
      ~{if defined(how_many) then ("--how_many " +  '"' + how_many + '"') else ""} \
      ~{if defined(nproc) then ("--nproc " +  '"' + nproc + '"') else ""} \
      ~{if defined(database_folder) then ("--database_folder " +  '"' + database_folder + '"') else ""} \
      ~{true="--only_input" false="" only_input} \
      ~{true="--add_ggb" false="" add_ggb} \
      ~{true="--add_fgb" false="" add_fgb} \
      ~{true="--overwrite" false="" overwrite} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    input_folder_containing: "Input folder containing the metagenomic bins to be indexed (default: None)"
    output_prefix: "Prefix used for the output folders: indexed bins, distance estimations. If not specified, the input folder will be used (default: None)"
    database: "Database name, available options can be listed using the --database_list parameter (default: None)"
    database_list: "List of all the available databases that can be specified with the -d/--database option (default: False)"
    database_update: "Update the databases file (default: False)"
    input_extension: "Specify the extension of the input file(s) specified via -i/--input. If not specified will try to infer it from the input files (default: None)"
    how_many: "Specify the number of SGBs to report in the output; \"all\" is a special value to report all the SGBs; this param is not used when \"--only_input\" is specified (default: 10)"
    nproc: "The number of CPUs to use (default: 1)"
    database_folder: "Path to the folder that contains the database file (default: phylophlan_databases/)"
    only_input: "If specified provides a distance matrix between only the input genomes provided (default: False)"
    add_ggb: "If specified adds GGB assignments. If specified with --add_fgb, then -n/--how_many will be set to 1 and will be adding a column that reports the closest reference genome (default: False)"
    add_fgb: "If specified adds FGB assignments. If specified with --add_ggb, then -n/--how_many will be set to 1 and will be adding a column that reports the closest reference genome (default: False)"
    overwrite: "If specified overwrite the output file if exists (default: False)"
    verbose: "Prints more stuff (default: False)"
  }
}