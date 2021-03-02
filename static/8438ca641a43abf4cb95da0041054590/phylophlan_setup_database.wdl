version 1.0

task PhylophlanSetupDatabase {
  input {
    File? specify_path_folder_none
    String? get_core_proteins
    Boolean? database_update
    File? specify_path_output_none
    String? db_name
    File? input_extension
    String? db_type
    String? output_extension
    File? overwrite
    Boolean? verbose
  }
  command <<<
    phylophlan_setup_database \
      ~{if defined(specify_path_folder_none) then ("--input " +  '"' + specify_path_folder_none + '"') else ""} \
      ~{if defined(get_core_proteins) then ("--get_core_proteins " +  '"' + get_core_proteins + '"') else ""} \
      ~{if (database_update) then "--database_update" else ""} \
      ~{if defined(specify_path_output_none) then ("--output " +  '"' + specify_path_output_none + '"') else ""} \
      ~{if defined(db_name) then ("--db_name " +  '"' + db_name + '"') else ""} \
      ~{if defined(input_extension) then ("--input_extension " +  '"' + input_extension + '"') else ""} \
      ~{if defined(db_type) then ("--db_type " +  '"' + db_type + '"') else ""} \
      ~{if defined(output_extension) then ("--output_extension " +  '"' + output_extension + '"') else ""} \
      ~{if (overwrite) then "--overwrite" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    specify_path_folder_none: "Specify the path to either the folder containing the\\nmarker files or the file of markers, in (multi-)fasta\\nformat (default: None)"
    get_core_proteins: "Specify the taxonomic label for which download the set\\nof core proteins. The label must represent a species:\\n\\\"--get_core_proteins s__Escherichia_coli\\\" (default:\\nNone)"
    database_update: "Update the databases file (default: False)"
    specify_path_output_none: "Specify path to the output folder where to save the\\ndatabase (default: None)"
    db_name: "Specify the name of the output database (default:\\nNone)"
    input_extension: "Specify the extension of the input file(s) specified\\nvia -i/--input (default: None)"
    db_type: "Specify the type of the database, where \\\"n\\\" stands for\\nnucleotides and \\\"a\\\" for amino acids (default: None)"
    output_extension: "Set the database output extension (default: None)"
    overwrite: "If specified and the output file exists it will be\\noverwritten (default: False)"
    verbose: "Prints more stuff (default: False)"
  }
  output {
    File out_stdout = stdout()
    File out_specify_path_output_none = "${in_specify_path_output_none}"
    File out_overwrite = "${in_overwrite}"
  }
}