version 1.0

task PhylophlanSetupDatabase {
  input {
    String? specify_path_default
    String? get_core_proteins
    Boolean? database_update
    String? specify_path_output
    String? db_name
    String? input_extension
    String? db_type
    String? output_extension
    Boolean? overwrite
    Boolean? verbose
  }
  command <<<
    phylophlan_setup_database \
      ~{if defined(specify_path_default) then ("--input " +  '"' + specify_path_default + '"') else ""} \
      ~{if defined(get_core_proteins) then ("--get_core_proteins " +  '"' + get_core_proteins + '"') else ""} \
      ~{true="--database_update" false="" database_update} \
      ~{if defined(specify_path_output) then ("--output " +  '"' + specify_path_output + '"') else ""} \
      ~{if defined(db_name) then ("--db_name " +  '"' + db_name + '"') else ""} \
      ~{if defined(input_extension) then ("--input_extension " +  '"' + input_extension + '"') else ""} \
      ~{if defined(db_type) then ("--db_type " +  '"' + db_type + '"') else ""} \
      ~{if defined(output_extension) then ("--output_extension " +  '"' + output_extension + '"') else ""} \
      ~{true="--overwrite" false="" overwrite} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    specify_path_default: "Specify the path to either the folder containing the marker files or the file of markers, in (multi-)fasta format (default: None)"
    get_core_proteins: "Specify the taxonomic label for which download the set of core proteins. The label must represent a species: \"--get_core_proteins s__Escherichia_coli\" (default: None)"
    database_update: "Update the databases file (default: False)"
    specify_path_output: "Specify path to the output folder where to save the database (default: None)"
    db_name: "Specify the name of the output database (default: None)"
    input_extension: "Specify the extension of the input file(s) specified via -i/--input (default: None)"
    db_type: "Specify the type of the database, where \"n\" stands for nucleotides and \"a\" for amino acids (default: None)"
    output_extension: "Set the database output extension (default: None)"
    overwrite: "If specified and the output file exists it will be overwritten (default: False)"
    verbose: "Prints more stuff (default: False)"
  }
}