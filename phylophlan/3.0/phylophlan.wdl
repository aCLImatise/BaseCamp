version 1.0

task Phylophlan {
  input {
    String? folder_containing_proteomes
    String? clean
    String? output_folder_name
    String? database
    String? db_type
    String? config_file
    String? diversity
    Boolean? accurate
    Boolean? fast
    Boolean? clean_all
    Boolean? database_list
    String? sub_mat
    Boolean? sub_mat_list
    Boolean? sub_mod_list
    String? nproc
    Int? min_num_proteins
    Int? min_len_protein
    Int? min_num_markers
    String? trim
    String? gap_perc_threshold
    String? not_variant_threshold
    String? subsample
    String? unknown_fraction
    String? scoring_function
    Boolean? sort
    Boolean? remove_fragmentary_entries
    String? fragmentary_threshold
    Int? min_num_entries
    String? maas
    Boolean? remove_only_gaps_entries
    Boolean? mutation_rates
    Boolean? force_nucleotides
    Boolean? update
    Boolean? verbose
    String? input_folder
    String? data_folder
    String? databases_folder
    String? sub_mat_folder
    String? sub_mod_folder
    String? configs_folder
    String? output_folder
    String? genome_extension
    String? proteome_extension
  }
  command <<<
    phylophlan \
      ~{if defined(folder_containing_proteomes) then ("--input " +  '"' + folder_containing_proteomes + '"') else ""} \
      ~{if defined(clean) then ("--clean " +  '"' + clean + '"') else ""} \
      ~{if defined(output_folder_name) then ("--output " +  '"' + output_folder_name + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(db_type) then ("--db_type " +  '"' + db_type + '"') else ""} \
      ~{if defined(config_file) then ("--config_file " +  '"' + config_file + '"') else ""} \
      ~{if defined(diversity) then ("--diversity " +  '"' + diversity + '"') else ""} \
      ~{true="--accurate" false="" accurate} \
      ~{true="--fast" false="" fast} \
      ~{true="--clean_all" false="" clean_all} \
      ~{true="--database_list" false="" database_list} \
      ~{if defined(sub_mat) then ("--submat " +  '"' + sub_mat + '"') else ""} \
      ~{true="--submat_list" false="" sub_mat_list} \
      ~{true="--submod_list" false="" sub_mod_list} \
      ~{if defined(nproc) then ("--nproc " +  '"' + nproc + '"') else ""} \
      ~{if defined(min_num_proteins) then ("--min_num_proteins " +  '"' + min_num_proteins + '"') else ""} \
      ~{if defined(min_len_protein) then ("--min_len_protein " +  '"' + min_len_protein + '"') else ""} \
      ~{if defined(min_num_markers) then ("--min_num_markers " +  '"' + min_num_markers + '"') else ""} \
      ~{if defined(trim) then ("--trim " +  '"' + trim + '"') else ""} \
      ~{if defined(gap_perc_threshold) then ("--gap_perc_threshold " +  '"' + gap_perc_threshold + '"') else ""} \
      ~{if defined(not_variant_threshold) then ("--not_variant_threshold " +  '"' + not_variant_threshold + '"') else ""} \
      ~{if defined(subsample) then ("--subsample " +  '"' + subsample + '"') else ""} \
      ~{if defined(unknown_fraction) then ("--unknown_fraction " +  '"' + unknown_fraction + '"') else ""} \
      ~{if defined(scoring_function) then ("--scoring_function " +  '"' + scoring_function + '"') else ""} \
      ~{true="--sort" false="" sort} \
      ~{true="--remove_fragmentary_entries" false="" remove_fragmentary_entries} \
      ~{if defined(fragmentary_threshold) then ("--fragmentary_threshold " +  '"' + fragmentary_threshold + '"') else ""} \
      ~{if defined(min_num_entries) then ("--min_num_entries " +  '"' + min_num_entries + '"') else ""} \
      ~{if defined(maas) then ("--maas " +  '"' + maas + '"') else ""} \
      ~{true="--remove_only_gaps_entries" false="" remove_only_gaps_entries} \
      ~{true="--mutation_rates" false="" mutation_rates} \
      ~{true="--force_nucleotides" false="" force_nucleotides} \
      ~{true="--update" false="" update} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(input_folder) then ("--input_folder " +  '"' + input_folder + '"') else ""} \
      ~{if defined(data_folder) then ("--data_folder " +  '"' + data_folder + '"') else ""} \
      ~{if defined(databases_folder) then ("--databases_folder " +  '"' + databases_folder + '"') else ""} \
      ~{if defined(sub_mat_folder) then ("--submat_folder " +  '"' + sub_mat_folder + '"') else ""} \
      ~{if defined(sub_mod_folder) then ("--submod_folder " +  '"' + sub_mod_folder + '"') else ""} \
      ~{if defined(configs_folder) then ("--configs_folder " +  '"' + configs_folder + '"') else ""} \
      ~{if defined(output_folder) then ("--output_folder " +  '"' + output_folder + '"') else ""} \
      ~{if defined(genome_extension) then ("--genome_extension " +  '"' + genome_extension + '"') else ""} \
      ~{if defined(proteome_extension) then ("--proteome_extension " +  '"' + proteome_extension + '"') else ""}
  >>>
  parameter_meta {
    folder_containing_proteomes: "Folder containing your input genomes and/or proteomes (default: None)"
    clean: "Clean the output and partial data produced for the specified project (default: None)"
    output_folder_name: "Output folder name, otherwise it will be the name of the input folder concatenated with the name of the database used (default: None)"
    database: "The name of the database of markers to use (default: None)"
    db_type: "Specify the type of the database of markers, where \"n\" stands for nucleotides and \"a\" for amino acids. If not specified, PhyloPhlAn will automatically detect the type of database (default: None)"
    config_file: "The configuration file to load, four ready-to-use configuration files can be generated using the \"write_default_configs.sh\" script present in the \"configs\" folder (default: None)"
    diversity: "Specify the expected diversity of the phylogeny, automatically adjust some parameters: \"low\": for genus-/species-/strain-level phylogenies; \"medium\": for class-/order-level phylogenies; \"high\": for phylum-/tree-of-life size phylogenies (default: None)"
    accurate: "Use more phylogenetic signal which can result in more accurate phylogeny; affected parameters depend on the \"--diversity\" level (default: False)"
    fast: "Perform more a faster phylogeny reconstruction by reducing the phylogenetic positions to use; affected parameters depend on the \"--diversity\" level (default: False)"
    clean_all: "Remove all installation and database files automatically generated (default: False)"
    database_list: "List of all the available databases that can be specified with the -d/--database option (default: False)"
    sub_mat: "Specify the substitution matrix to use, available substitution matrices can be listed with \"-- submat_list\" (default: None)"
    sub_mat_list: "List of all the available substitution matrices that can be specified with the -s/--submat option (default: False)"
    sub_mod_list: "List of all the available substitution models that can be specified with the --maas option (default: False)"
    nproc: "The number of cores to use (default: 1)"
    min_num_proteins: "Proteomes with less than this number of proteins will be discarded (default: 1)"
    min_len_protein: "Proteins in proteomes shorter than this value will be discarded (default: 50)"
    min_num_markers: "Input genomes or proteomes that map to less than the specified number of markers will be discarded (default: 1)"
    trim: "Specify which type of trimming to perform: \"gap_trim\": execute what specified in the \"trim\" section of the configuration file; \"gap_perc\": remove columns with a percentage of gaps above a certain threshold (see \"-- gap_perc_threshold\" parameter)\"not_variant\": remove columns with at least one nucleotide/amino acid appearing above a certain threshold (see \"-- not_variant_threshold\" parameter); \"greedy\": performs all the above trimming steps; If not specified, no trimming will be performed (default: None)"
    gap_perc_threshold: "Specify the value used to consider a column not variant when \"--trim not_variant\" is specified (default: 0.67)"
    not_variant_threshold: "Specify the value used to consider a column not variant when \"--trim not_variant\" is specified (default: 0.99)"
    subsample: "The number of positions to retain from each single marker, available option are: \"phylophlan\": specific number of positions for each PhyloPhlAn marker (only when \"--database phylophlan\"); \"onethousand\": return the top 1000 positions; \"sevenhundred\": return the top 700; \"fivehundred\": return the top 500; \"threehundred\" return the top 300; \"onehundred\": return the top 100 positions; \"fifty\": return the top 50 positions; \"twentyfive\": return the top 25 positions; \"fiftypercent\": return the top 50 percent positions; \"twentyfivepercent\": return the top 25% positions; \"tenpercent\": return the top 10% positions; If not specified, the complete alignment will be used (default: None)"
    unknown_fraction: "Define the amount of unknowns (\"X\" and \"-\") allowed in each column of the MSA of the markers (default: 0.3)"
    scoring_function: "Specify which scoring function to use to evaluate columns in the MSA results (default: None)"
    sort: "If specified, the markers will be ordered, when using the PhyloPhlAn database, it will be automatically set to \"True\" (default: False)"
    remove_fragmentary_entries: "If specified the MSAs will be checked and cleaned from fragmentary entries. See --fragmentary_threshold for the threshold values above which an entry will be considered fragmentary (default: False)"
    fragmentary_threshold: "The fraction of gaps in the MSA to be considered fragmentary and hence discarded (default: 0.85)"
    min_num_entries: "The minimum number of entries to be present for each of the markers in the database (default: 4)"
    maas: "Select a mapping file that specifies the substitution model of amino acid to use for each of the markers for the gene tree reconstruction. File must be tab- separated (default: None)"
    remove_only_gaps_entries: "If specified, entries in the MSAs composed only of gaps (\"-\") will be removed. This is equivalent to specify \"--remove_fragmentary_entries --fragmentary_threshold 1\" (default: False)"
    mutation_rates: "If specified will produced a mutation rates table for each of the aligned markers and a summary table for the concatenated MSA. This operation can take a long time to finish (default: False)"
    force_nucleotides: "If specified force PhyloPhlAn to use nucleotide sequences for the phylogenetic analysis, even in the case of a database of amino acids (default: False)"
    update: "Update the databases file (default: False)"
    verbose: "Makes PhyloPhlAn verbose (default: False)"
    input_folder: "Path to the folder containing the input data (default: input/)"
    data_folder: "Path to the folder where to store the intermediate files, default is \"tmp\" inside the project's output folder (default: None)"
    databases_folder: "Path to the folder containing the database files (default: phylophlan_databases/)"
    sub_mat_folder: "Path to the folder containing the substitution matrices to use to compute the column score for the subsampling step (default: phylophlan_substitution_matrices/)"
    sub_mod_folder: "Path to the folder containing the mapping file with substitution models for each marker for the gene tree building (default: phylophlan_substitution_models/)"
    configs_folder: "Path to the folder containing the configuration files (default: phylophlan_configs/)"
    output_folder: "Path to the output folder where to save the results (default: )"
    genome_extension: "Extension for input genomes (default: .fna)"
    proteome_extension: "Extension for input proteomes (default: .faa)"
  }
}