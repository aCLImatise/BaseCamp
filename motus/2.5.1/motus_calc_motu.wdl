version 1.0

task MotusCalcMotu {
  input {
    Boolean? str_sample_name
    Boolean? file_provide_table
    String? db
    Boolean? file_output_file
    Boolean? profile_only_species
    Boolean? print_result_biom
    Boolean? str_print_result
    Boolean? print_taxonomy_levels
    Boolean? print_result_counts
    Boolean? print_ncbi_i
    Boolean? print_full_name
    Boolean? print_full_taxonomy
    Boolean? str_taxonomic_level
    Boolean? int_number_marker
    Boolean? int_level_error
  }
  command <<<
    motus calc_motu \
      ~{true="-n" false="" str_sample_name} \
      ~{true="-i" false="" file_provide_table} \
      ~{if defined(db) then ("-db " +  '"' + db + '"') else ""} \
      ~{true="-o" false="" file_output_file} \
      ~{true="-e" false="" profile_only_species} \
      ~{true="-B" false="" print_result_biom} \
      ~{true="-C" false="" str_print_result} \
      ~{true="-A" false="" print_taxonomy_levels} \
      ~{true="-c" false="" print_result_counts} \
      ~{true="-p" false="" print_ncbi_i} \
      ~{true="-u" false="" print_full_name} \
      ~{true="-q" false="" print_full_taxonomy} \
      ~{true="-k" false="" str_taxonomic_level} \
      ~{true="-g" false="" int_number_marker} \
      ~{true="-v" false="" int_level_error}
  >>>
  parameter_meta {
    str_sample_name: "STR   sample name"
    file_provide_table: "FILE  provide the mgc abundance table"
    db: "provide a database directory"
    file_output_file: "FILE  output file name [stdout]"
    profile_only_species: "profile only reference species (ref_mOTUs)"
    print_result_biom: "print result in BIOM format"
    str_print_result: "STR   print result in CAMI format (BioBoxes format 0.9.1) Values: [precision, recall, parenthesis]"
    print_taxonomy_levels: "print all taxonomy levels together"
    print_result_counts: "print result as counts instead of relative abundances"
    print_ncbi_i: "print NCBI id"
    print_full_name: "print the full name of the species"
    print_full_taxonomy: "print the full rank taxonomy"
    str_taxonomic_level: "STR   taxonomic level [mOTU] Values: [kingdom, phylum, class, order, family, genus, mOTU]"
    int_number_marker: "INT   number of marker genes cutoff: 1=higher recall, 10=higher precision [3]"
    int_level_error: "INT   verbose level: 1=error, 2=warning, 3=message, 4+=debugging [3]"
  }
}