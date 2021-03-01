version 1.0

task PhylophlanGetReference {
  input {
    String? get
    Boolean? list_clades
    Boolean? database_update
    File? output_file_extension
    File? specify_path_defaultnone
    Int? how_many
    File? genbank_mapping
    Boolean? verbose
  }
  command <<<
    phylophlan_get_reference \
      ~{if defined(get) then ("--get " +  '"' + get + '"') else ""} \
      ~{if (list_clades) then "--list_clades" else ""} \
      ~{if (database_update) then "--database_update" else ""} \
      ~{if defined(output_file_extension) then ("--output_file_extension " +  '"' + output_file_extension + '"') else ""} \
      ~{if defined(specify_path_defaultnone) then ("--output " +  '"' + specify_path_defaultnone + '"') else ""} \
      ~{if defined(how_many) then ("--how_many " +  '"' + how_many + '"') else ""} \
      ~{if defined(genbank_mapping) then ("--genbank_mapping " +  '"' + genbank_mapping + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    get: "Specify the taxonomic label for which download the set\\nof reference genomes. The label must represent a valid\\ntaxonomic level or the special case \\\"all\\\" (default:\\nNone)"
    list_clades: "Print for all taxa the total number of species and\\nreference genomes available (default: False)"
    database_update: "Update the databases file (default: False)"
    output_file_extension: "Specify path to the extension of the output files\\n(default: .fna.gz)"
    specify_path_defaultnone: "Specify path to the output folder where to save the\\nfiles, required when -g/--get is specified (default:\\nNone)"
    how_many: "Specify how many reference genomes to download, where\\n-1 stands for \\\"all available\\\" (default: 4)"
    genbank_mapping: "The local GenBank mapping file, if not found it will\\nbe automatically downloaded (default:\\nassembly_summary_genbank.txt)"
    verbose: "Prints more stuff (default: False)"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_extension = "${in_output_file_extension}"
    File out_specify_path_defaultnone = "${in_specify_path_defaultnone}"
  }
}