class: CommandLineTool
id: phylophlan.cwl
inputs:
- id: in_input
  doc: "Folder containing your input genomes and/or proteomes\n(default: None)"
  type: Directory?
  inputBinding:
    prefix: --input
- id: in_clean
  doc: "Clean the output and partial data produced for the\nspecified project (default:\
    \ None)"
  type: string?
  inputBinding:
    prefix: --clean
- id: in_output
  doc: "Output folder name, otherwise it will be the name of\nthe input folder concatenated\
    \ with the name of the\ndatabase used (default: None)"
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_database
  doc: "The name of the database of markers to use (default:\nNone)"
  type: string?
  inputBinding:
    prefix: --database
- id: in_db_type
  doc: "Specify the type of the database of markers, where \"n\"\nstands for nucleotides\
    \ and \"a\" for amino acids. If not\nspecified, PhyloPhlAn will automatically\
    \ detect the\ntype of database (default: None)"
  type: string?
  inputBinding:
    prefix: --db_type
- id: in_config_file
  doc: "The configuration file to use. Four ready-to-use\nconfiguration files can\
    \ be generated using the\n\"phylophlan_write_default_configs.sh\" script (default:\n\
    None)"
  type: File?
  inputBinding:
    prefix: --config_file
- id: in_diversity
  doc: "Specify the expected diversity of the phylogeny,\nautomatically adjust some\
    \ parameters: \"low\": for\ngenus-/species-/strain-level phylogenies; \"medium\"\
    :\nfor class-/order-level phylogenies; \"high\": for\nphylum-/tree-of-life size\
    \ phylogenies (default: None)"
  type: string?
  inputBinding:
    prefix: --diversity
- id: in_accurate
  doc: "Use more phylogenetic signal which can result in more\naccurate phylogeny;\
    \ affected parameters depend on the\n\"--diversity\" level (default: False)"
  type: boolean?
  inputBinding:
    prefix: --accurate
- id: in_fast
  doc: "Perform more a faster phylogeny reconstruction by\nreducing the phylogenetic\
    \ positions to use; affected\nparameters depend on the \"--diversity\" level (default:\n\
    False)"
  type: boolean?
  inputBinding:
    prefix: --fast
- id: in_clean_all
  doc: "Remove all installation and database files\nautomatically generated (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --clean_all
- id: in_database_list
  doc: "List of all the available databases that can be\nspecified with the -d/--database\
    \ option (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --database_list
- id: in_sub_mat
  doc: "Specify the substitution matrix to use, available\nsubstitution matrices can\
    \ be listed with \"--\nsubmat_list\" (default: None)"
  type: string?
  inputBinding:
    prefix: --submat
- id: in_sub_mat_list
  doc: "List of all the available substitution matrices that\ncan be specified with\
    \ the -s/--submat option (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --submat_list
- id: in_sub_mod_list
  doc: "List of all the available substitution models that can\nbe specified with\
    \ the --maas option (default: False)"
  type: boolean?
  inputBinding:
    prefix: --submod_list
- id: in_nproc
  doc: 'The number of cores to use (default: 1)'
  type: long?
  inputBinding:
    prefix: --nproc
- id: in_min_num_proteins
  doc: "Proteomes with less than this number of proteins will\nbe discarded (default:\
    \ 1)"
  type: long?
  inputBinding:
    prefix: --min_num_proteins
- id: in_min_len_protein
  doc: "Proteins in proteomes shorter than this value will be\ndiscarded (default:\
    \ 50)"
  type: long?
  inputBinding:
    prefix: --min_len_protein
- id: in_min_num_markers
  doc: "Input genomes or proteomes that map to less than the\nspecified number of\
    \ markers will be discarded\n(default: 1)"
  type: long?
  inputBinding:
    prefix: --min_num_markers
- id: in_trim
  doc: "Specify which type of trimming to perform: \"gap_trim\":\nexecute what specified\
    \ in the \"trim\" section of the\nconfiguration file; \"gap_perc\": remove columns\
    \ with a\npercentage of gaps above a certain threshold (see \"--\ngap_perc_threshold\"\
    \ parameter)\"not_variant\": remove\ncolumns with at least one nucleotide/amino\
    \ acid\nappearing above a certain threshold (see \"--\nnot_variant_threshold\"\
    \ parameter); \"greedy\": performs\nall the above trimming steps; If not specified,\
    \ no\ntrimming will be performed (default: None)"
  type: string?
  inputBinding:
    prefix: --trim
- id: in_gap_perc_threshold
  doc: "Specify the value used to consider a column not\nvariant when \"--trim not_variant\"\
    \ is specified\n(default: 0.67)"
  type: double?
  inputBinding:
    prefix: --gap_perc_threshold
- id: in_not_variant_threshold
  doc: "Specify the value used to consider a column not\nvariant when \"--trim not_variant\"\
    \ is specified\n(default: 0.99)"
  type: double?
  inputBinding:
    prefix: --not_variant_threshold
- id: in_subsample
  doc: "The number of positions to retain from each single\nmarker, available option\
    \ are: \"phylophlan\": specific\nnumber of positions for each PhyloPhlAn marker\
    \ (only\nwhen \"--database phylophlan\"); \"onethousand\": return\nthe top 1000\
    \ positions; \"sevenhundred\": return the top\n700; \"fivehundred\": return the\
    \ top 500; \"threehundred\"\nreturn the top 300; \"onehundred\": return the top\
    \ 100\npositions; \"fifty\": return the top 50 positions;\n\"twentyfive\": return\
    \ the top 25 positions;\n\"fiftypercent\": return the top 50 percent positions;\n\
    \"twentyfivepercent\": return the top 25% positions;\n\"tenpercent\": return the\
    \ top 10% positions; \"full\":\nfull alignment. (default: full)"
  type: string?
  inputBinding:
    prefix: --subsample
- id: in_unknown_fraction
  doc: "Define the amount of unknowns (\"X\" and \"-\") allowed in\neach column of\
    \ the MSA of the markers (default: 0.3)"
  type: double?
  inputBinding:
    prefix: --unknown_fraction
- id: in_scoring_function
  doc: "Specify which scoring function to use to evaluate\ncolumns in the MSA results\
    \ (default: None)"
  type: string?
  inputBinding:
    prefix: --scoring_function
- id: in_sort
  doc: "If specified, the markers will be ordered, when using\nthe PhyloPhlAn database,\
    \ it will be automatically set\nto \"True\" (default: False)"
  type: boolean?
  inputBinding:
    prefix: --sort
- id: in_remove_fragmentary_entries
  doc: "If specified the MSAs will be checked and cleaned from\nfragmentary entries.\
    \ See --fragmentary_threshold for\nthe threshold values above which an entry will\
    \ be\nconsidered fragmentary (default: False)"
  type: boolean?
  inputBinding:
    prefix: --remove_fragmentary_entries
- id: in_fragmentary_threshold
  doc: "The fraction of gaps in the MSA to be considered\nfragmentary and hence discarded\
    \ (default: 0.85)"
  type: double?
  inputBinding:
    prefix: --fragmentary_threshold
- id: in_min_num_entries
  doc: "The minimum number of entries to be present for each\nof the markers in the\
    \ database (default: 4)"
  type: long?
  inputBinding:
    prefix: --min_num_entries
- id: in_maas
  doc: "Select a mapping file that specifies the substitution\nmodel of amino acid\
    \ to use for each of the markers for\nthe gene tree reconstruction. File must\
    \ be tab-\nseparated (default: None)"
  type: File?
  inputBinding:
    prefix: --maas
- id: in_remove_only_gaps_entries
  doc: "If specified, entries in the MSAs composed only of\ngaps (\"-\") will be removed.\
    \ This is equivalent to\nspecify \"--remove_fragmentary_entries\n--fragmentary_threshold\
    \ 1\" (default: False)"
  type: boolean?
  inputBinding:
    prefix: --remove_only_gaps_entries
- id: in_mutation_rates
  doc: "If specified will produced a mutation rates table for\neach of the aligned\
    \ markers and a summary table for\nthe concatenated MSA. This operation can take\
    \ a long\ntime to finish (default: False)"
  type: boolean?
  inputBinding:
    prefix: --mutation_rates
- id: in_force_nucleotides
  doc: "If specified force PhyloPhlAn to use nucleotide\nsequences for the phylogenetic\
    \ analysis, even in the\ncase of a database of amino acids (default: False)"
  type: boolean?
  inputBinding:
    prefix: --force_nucleotides
- id: in_update
  doc: 'Update the databases file (default: False)'
  type: boolean?
  inputBinding:
    prefix: --update
- id: in_citation
  doc: Show citation
  type: boolean?
  inputBinding:
    prefix: --citation
- id: in_verbose
  doc: 'Makes PhyloPhlAn verbose (default: False)'
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_input_folder
  doc: "Path to the folder containing the input data (default:\ninput/)"
  type: Directory?
  inputBinding:
    prefix: --input_folder
- id: in_data_folder
  doc: "Path to the folder where to store the intermediate\nfiles, default is \"tmp\"\
    \ inside the project's output\nfolder (default: None)"
  type: File?
  inputBinding:
    prefix: --data_folder
- id: in_databases_folder
  doc: "Path to the folder containing the database files\n(default: phylophlan_databases/)"
  type: Directory?
  inputBinding:
    prefix: --databases_folder
- id: in_sub_mat_folder
  doc: "Path to the folder containing the substitution\nmatrices to use to compute\
    \ the column score for the\nsubsampling step (default:\nphylophlan_substitution_matrices/)"
  type: Directory?
  inputBinding:
    prefix: --submat_folder
- id: in_sub_mod_folder
  doc: "Path to the folder containing the mapping file with\nsubstitution models for\
    \ each marker for the gene tree\nbuilding (default: phylophlan_substitution_models/)"
  type: Directory?
  inputBinding:
    prefix: --submod_folder
- id: in_configs_folder
  doc: "Path to the folder containing the configuration files\n(default: phylophlan_configs/)"
  type: Directory?
  inputBinding:
    prefix: --configs_folder
- id: in_output_folder
  doc: "Path to the output folder where to save the results\n(default: )"
  type: Directory?
  inputBinding:
    prefix: --output_folder
- id: in_genome_extension
  doc: 'Extension for input genomes (default: .fna)'
  type: string?
  inputBinding:
    prefix: --genome_extension
- id: in_proteome_extension
  doc: "Extension for input proteomes (default: .faa)\n"
  type: string?
  inputBinding:
    prefix: --proteome_extension
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_data_folder
  doc: "Path to the folder where to store the intermediate\nfiles, default is \"tmp\"\
    \ inside the project's output\nfolder (default: None)"
  type: File?
  outputBinding:
    glob: $(inputs.in_data_folder)
- id: out_output_folder
  doc: "Path to the output folder where to save the results\n(default: )"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_folder)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/phylophlan:3.0.2--py_0
cwlVersion: v1.1
baseCommand:
- phylophlan
