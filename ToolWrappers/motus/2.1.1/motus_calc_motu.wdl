version 1.0

task MotusCalcMotu {
  input {
    String? sample_name
    File? provide_abundance_table
    File? output_file_name
    Boolean? profile_only_species
    Boolean? print_result_biom
    Float? print_result_cami
    Boolean? print_result_counts
    Boolean? print_ncbi_i
    Boolean? print_full_name
    Boolean? print_rank_taxonomy
    String? taxonomic_level_values
    Int? number_marker_genes
    Int? verbose_level_error
  }
  command <<<
    motus calc_motu \
      ~{if defined(sample_name) then ("-n " +  '"' + sample_name + '"') else ""} \
      ~{if defined(provide_abundance_table) then ("-i " +  '"' + provide_abundance_table + '"') else ""} \
      ~{if defined(output_file_name) then ("-o " +  '"' + output_file_name + '"') else ""} \
      ~{if (profile_only_species) then "-e" else ""} \
      ~{if (print_result_biom) then "-B" else ""} \
      ~{if defined(print_result_cami) then ("-C " +  '"' + print_result_cami + '"') else ""} \
      ~{if (print_result_counts) then "-c" else ""} \
      ~{if (print_ncbi_i) then "-p" else ""} \
      ~{if (print_full_name) then "-u" else ""} \
      ~{if (print_rank_taxonomy) then "-q" else ""} \
      ~{if defined(taxonomic_level_values) then ("-k " +  '"' + taxonomic_level_values + '"') else ""} \
      ~{if defined(number_marker_genes) then ("-g " +  '"' + number_marker_genes + '"') else ""} \
      ~{if defined(verbose_level_error) then ("-v " +  '"' + verbose_level_error + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    sample_name: "sample name"
    provide_abundance_table: "provide the mgc abundance table"
    output_file_name: "output file name [stdout]"
    profile_only_species: "profile only reference species (ref_mOTUs)"
    print_result_biom: "print result in BIOM format"
    print_result_cami: "print result in CAMI format (BioBoxes format 0.9.1)\\nValues: [precision, recall, parenthesis]"
    print_result_counts: "print result as counts instead of relative abundances"
    print_ncbi_i: "print NCBI id"
    print_full_name: "print the full name of the species"
    print_rank_taxonomy: "print the full rank taxonomy"
    taxonomic_level_values: "taxonomic level [mOTU]\\nValues: [kingdom, phylum, class, order, family, genus, mOTU]"
    number_marker_genes: "number of marker genes cutoff: 1=higher recall, 10=higher precision [3]"
    verbose_level_error: "verbose level: 1=error, 2=warning, 3=message, 4+=debugging [3]"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
  }
}