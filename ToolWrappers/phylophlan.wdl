version 1.0

task Phylophlan {
  input {
    Directory? folder_containing_input
    String? clean
    Directory? output_folder_name
    String? database
    String? db_type
    File? config_file
    String? diversity
    Boolean? accurate
    Boolean? fast
    Boolean? clean_all
    Boolean? database_list
    String? sub_mat
    Boolean? sub_mat_list
    Boolean? sub_mod_list
    Int? nproc
    Int? min_num_proteins
    Int? min_len_protein
    Int? min_num_markers
    String? trim
    Float? gap_perc_threshold
    Float? not_variant_threshold
    String? subsample
    Float? unknown_fraction
    String? scoring_function
    Boolean? sort
    Boolean? remove_fragmentary_entries
    Float? fragmentary_threshold
    Int? min_num_entries
    File? maas
    Boolean? remove_only_gaps_entries
    Boolean? mutation_rates
    Boolean? force_nucleotides
    Boolean? update
    Boolean? verbose
    Directory? input_folder
    File? data_folder
    Directory? databases_folder
    Directory? sub_mat_folder
    Directory? sub_mod_folder
    Directory? configs_folder
    Directory? output_folder
    String? genome_extension
    String? proteome_extension
  }
  command <<<
    phylophlan \
      ~{if defined(folder_containing_input) then ("--input " +  '"' + folder_containing_input + '"') else ""} \
      ~{if defined(clean) then ("--clean " +  '"' + clean + '"') else ""} \
      ~{if defined(output_folder_name) then ("--output " +  '"' + output_folder_name + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(db_type) then ("--db_type " +  '"' + db_type + '"') else ""} \
      ~{if defined(config_file) then ("--config_file " +  '"' + config_file + '"') else ""} \
      ~{if defined(diversity) then ("--diversity " +  '"' + diversity + '"') else ""} \
      ~{if (accurate) then "--accurate" else ""} \
      ~{if (fast) then "--fast" else ""} \
      ~{if (clean_all) then "--clean_all" else ""} \
      ~{if (database_list) then "--database_list" else ""} \
      ~{if defined(sub_mat) then ("--submat " +  '"' + sub_mat + '"') else ""} \
      ~{if (sub_mat_list) then "--submat_list" else ""} \
      ~{if (sub_mod_list) then "--submod_list" else ""} \
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
      ~{if (sort) then "--sort" else ""} \
      ~{if (remove_fragmentary_entries) then "--remove_fragmentary_entries" else ""} \
      ~{if defined(fragmentary_threshold) then ("--fragmentary_threshold " +  '"' + fragmentary_threshold + '"') else ""} \
      ~{if defined(min_num_entries) then ("--min_num_entries " +  '"' + min_num_entries + '"') else ""} \
      ~{if defined(maas) then ("--maas " +  '"' + maas + '"') else ""} \
      ~{if (remove_only_gaps_entries) then "--remove_only_gaps_entries" else ""} \
      ~{if (mutation_rates) then "--mutation_rates" else ""} \
      ~{if (force_nucleotides) then "--force_nucleotides" else ""} \
      ~{if (update) then "--update" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
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
    folder_containing_input: "Folder containing your input genomes and/or proteomes\\n(default: None)"
    clean: "Clean the output and partial data produced for the\\nspecified project (default: None)"
    output_folder_name: "Output folder name, otherwise it will be the name of\\nthe input folder concatenated with the name of the\\ndatabase used (default: None)"
    database: "The name of the database of markers to use (default:\\nNone)"
    db_type: "Specify the type of the database of markers, where \\\"n\\\"\\nstands for nucleotides and \\\"a\\\" for amino acids. If not\\nspecified, PhyloPhlAn will automatically detect the\\ntype of database (default: None)"
    config_file: "The configuration file to load, four ready-to-use\\nconfiguration files can be generated using the\\n\\\"write_default_configs.sh\\\" script present in the\\n\\\"configs\\\" folder (default: None)"
    diversity: "Specify the expected diversity of the phylogeny,\\nautomatically adjust some parameters: \\\"low\\\": for\\ngenus-/species-/strain-level phylogenies; \\\"medium\\\":\\nfor class-/order-level phylogenies; \\\"high\\\": for\\nphylum-/tree-of-life size phylogenies (default: None)"
    accurate: "Use more phylogenetic signal which can result in more\\naccurate phylogeny; affected parameters depend on the\\n\\\"--diversity\\\" level (default: False)"
    fast: "Perform more a faster phylogeny reconstruction by\\nreducing the phylogenetic positions to use; affected\\nparameters depend on the \\\"--diversity\\\" level (default:\\nFalse)"
    clean_all: "Remove all installation and database files\\nautomatically generated (default: False)"
    database_list: "List of all the available databases that can be\\nspecified with the -d/--database option (default:\\nFalse)"
    sub_mat: "Specify the substitution matrix to use, available\\nsubstitution matrices can be listed with \\\"--\\nsubmat_list\\\" (default: None)"
    sub_mat_list: "List of all the available substitution matrices that\\ncan be specified with the -s/--submat option (default:\\nFalse)"
    sub_mod_list: "List of all the available substitution models that can\\nbe specified with the --maas option (default: False)"
    nproc: "The number of cores to use (default: 1)"
    min_num_proteins: "Proteomes with less than this number of proteins will\\nbe discarded (default: 1)"
    min_len_protein: "Proteins in proteomes shorter than this value will be\\ndiscarded (default: 50)"
    min_num_markers: "Input genomes or proteomes that map to less than the\\nspecified number of markers will be discarded\\n(default: 1)"
    trim: "Specify which type of trimming to perform: \\\"gap_trim\\\":\\nexecute what specified in the \\\"trim\\\" section of the\\nconfiguration file; \\\"gap_perc\\\": remove columns with a\\npercentage of gaps above a certain threshold (see \\\"--\\ngap_perc_threshold\\\" parameter)\\\"not_variant\\\": remove\\ncolumns with at least one nucleotide/amino acid\\nappearing above a certain threshold (see \\\"--\\nnot_variant_threshold\\\" parameter); \\\"greedy\\\": performs\\nall the above trimming steps; If not specified, no\\ntrimming will be performed (default: None)"
    gap_perc_threshold: "Specify the value used to consider a column not\\nvariant when \\\"--trim not_variant\\\" is specified\\n(default: 0.67)"
    not_variant_threshold: "Specify the value used to consider a column not\\nvariant when \\\"--trim not_variant\\\" is specified\\n(default: 0.99)"
    subsample: "The number of positions to retain from each single\\nmarker, available option are: \\\"phylophlan\\\": specific\\nnumber of positions for each PhyloPhlAn marker (only\\nwhen \\\"--database phylophlan\\\"); \\\"onethousand\\\": return\\nthe top 1000 positions; \\\"sevenhundred\\\": return the top\\n700; \\\"fivehundred\\\": return the top 500; \\\"threehundred\\\"\\nreturn the top 300; \\\"onehundred\\\": return the top 100\\npositions; \\\"fifty\\\": return the top 50 positions;\\n\\\"twentyfive\\\": return the top 25 positions;\\n\\\"fiftypercent\\\": return the top 50 percent positions;\\n\\\"twentyfivepercent\\\": return the top 25% positions;\\n\\\"tenpercent\\\": return the top 10% positions; If not\\nspecified, the complete alignment will be used\\n(default: None)"
    unknown_fraction: "Define the amount of unknowns (\\\"X\\\" and \\\"-\\\") allowed in\\neach column of the MSA of the markers (default: 0.3)"
    scoring_function: "Specify which scoring function to use to evaluate\\ncolumns in the MSA results (default: None)"
    sort: "If specified, the markers will be ordered, when using\\nthe PhyloPhlAn database, it will be automatically set\\nto \\\"True\\\" (default: False)"
    remove_fragmentary_entries: "If specified the MSAs will be checked and cleaned from\\nfragmentary entries. See --fragmentary_threshold for\\nthe threshold values above which an entry will be\\nconsidered fragmentary (default: False)"
    fragmentary_threshold: "The fraction of gaps in the MSA to be considered\\nfragmentary and hence discarded (default: 0.85)"
    min_num_entries: "The minimum number of entries to be present for each\\nof the markers in the database (default: 4)"
    maas: "Select a mapping file that specifies the substitution\\nmodel of amino acid to use for each of the markers for\\nthe gene tree reconstruction. File must be tab-\\nseparated (default: None)"
    remove_only_gaps_entries: "If specified, entries in the MSAs composed only of\\ngaps (\\\"-\\\") will be removed. This is equivalent to\\nspecify \\\"--remove_fragmentary_entries\\n--fragmentary_threshold 1\\\" (default: False)"
    mutation_rates: "If specified will produced a mutation rates table for\\neach of the aligned markers and a summary table for\\nthe concatenated MSA. This operation can take a long\\ntime to finish (default: False)"
    force_nucleotides: "If specified force PhyloPhlAn to use nucleotide\\nsequences for the phylogenetic analysis, even in the\\ncase of a database of amino acids (default: False)"
    update: "Update the databases file (default: False)"
    verbose: "Makes PhyloPhlAn verbose (default: False)"
    input_folder: "Path to the folder containing the input data (default:\\ninput/)"
    data_folder: "Path to the folder where to store the intermediate\\nfiles, default is \\\"tmp\\\" inside the project's output\\nfolder (default: None)"
    databases_folder: "Path to the folder containing the database files\\n(default: phylophlan_databases/)"
    sub_mat_folder: "Path to the folder containing the substitution\\nmatrices to use to compute the column score for the\\nsubsampling step (default:\\nphylophlan_substitution_matrices/)"
    sub_mod_folder: "Path to the folder containing the mapping file with\\nsubstitution models for each marker for the gene tree\\nbuilding (default: phylophlan_substitution_models/)"
    configs_folder: "Path to the folder containing the configuration files\\n(default: phylophlan_configs/)"
    output_folder: "Path to the output folder where to save the results\\n(default: )"
    genome_extension: "Extension for input genomes (default: .fna)"
    proteome_extension: "Extension for input proteomes (default: .faa)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_data_folder = "${in_data_folder}"
    Directory out_output_folder = "${in_output_folder}"
  }
}