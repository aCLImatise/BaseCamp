version 1.0

task PhylophlanMetagenomic {
  input {
    Directory? input_folder_containing
    Directory? output_prefix
    String? database
    Boolean? database_list
    Boolean? database_update
    File? input_extension
    Int? how_many
    Int? nproc
    Directory? database_folder
    Boolean? only_input
    Boolean? add_ggb
    File? overwrite
    Boolean? verbose
  }
  command <<<
    phylophlan_metagenomic \
      ~{if defined(input_folder_containing) then ("--input " +  '"' + input_folder_containing + '"') else ""} \
      ~{if defined(output_prefix) then ("--output_prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if (database_list) then "--database_list" else ""} \
      ~{if (database_update) then "--database_update" else ""} \
      ~{if defined(input_extension) then ("--input_extension " +  '"' + input_extension + '"') else ""} \
      ~{if defined(how_many) then ("--how_many " +  '"' + how_many + '"') else ""} \
      ~{if defined(nproc) then ("--nproc " +  '"' + nproc + '"') else ""} \
      ~{if defined(database_folder) then ("--database_folder " +  '"' + database_folder + '"') else ""} \
      ~{if (only_input) then "--only_input" else ""} \
      ~{if (add_ggb) then "--add_ggb" else ""} \
      ~{if (overwrite) then "--overwrite" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    input_folder_containing: "Input folder containing the metagenomic bins to be\\nindexed (default: None)"
    output_prefix: "Prefix used for the output folders: indexed bins,\\ndistance estimations. If not specified, the input\\nfolder will be used (default: None)"
    database: "Database name, available options can be listed using\\nthe --database_list parameter (default: None)"
    database_list: "List of all the available databases that can be\\nspecified with the -d/--database option (default:\\nFalse)"
    database_update: "Update the databases file (default: False)"
    input_extension: "Specify the extension of the input file(s) specified\\nvia -i/--input. If not specified will try to infer it\\nfrom the input files (default: None)"
    how_many: "Specify the number of SGBs to report in the output;\\n\\\"all\\\" is a special value to report all the SGBs; this\\nparam is not used when \\\"--only_input\\\" is specified\\n(default: 10)"
    nproc: "The number of CPUs to use (default: 1)"
    database_folder: "Path to the folder that contains the database file\\n(default: phylophlan_databases/)"
    only_input: "If specified provides a distance matrix between only\\nthe input genomes provided (default: False)"
    add_ggb: "If specified adds GGB assignments. If specified with"
    overwrite: "If specified overwrite the output file if exists\\n(default: False)"
    verbose: "Prints more stuff (default: False)"
  }
  output {
    File out_stdout = stdout()
    File out_overwrite = "${in_overwrite}"
  }
}