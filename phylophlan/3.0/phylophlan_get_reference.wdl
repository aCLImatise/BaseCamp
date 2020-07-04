version 1.0

task PhylophlanGetReference {
  input {
    String? get
    Boolean? list_clades
    Boolean? database_update
    String? output_file_extension
    String? specify_path_default
    String? how_many
    String? genbank_mapping
    Boolean? verbose
  }
  command <<<
    phylophlan_get_reference \
      ~{if defined(get) then ("--get " +  '"' + get + '"') else ""} \
      ~{true="--list_clades" false="" list_clades} \
      ~{true="--database_update" false="" database_update} \
      ~{if defined(output_file_extension) then ("--output_file_extension " +  '"' + output_file_extension + '"') else ""} \
      ~{if defined(specify_path_default) then ("--output " +  '"' + specify_path_default + '"') else ""} \
      ~{if defined(how_many) then ("--how_many " +  '"' + how_many + '"') else ""} \
      ~{if defined(genbank_mapping) then ("--genbank_mapping " +  '"' + genbank_mapping + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    get: "Specify the taxonomic label for which download the set of reference genomes. The label must represent a valid taxonomic level or the special case \"all\" (default: None)"
    list_clades: "Print for all taxa the total number of species and reference genomes available (default: False)"
    database_update: "Update the databases file (default: False)"
    output_file_extension: "Specify path to the extension of the output files (default: .fna.gz)"
    specify_path_default: "Specify path to the output folder where to save the files, required when -g/--get is specified (default: None)"
    how_many: "Specify how many reference genomes to download, where -1 stands for \"all available\" (default: 4)"
    genbank_mapping: "The local GenBank mapping file, if not found it will be automatically downloaded (default: assembly_summary_genbank.txt)"
    verbose: "Prints more stuff (default: False)"
  }
}