class: CommandLineTool
id: phylophlan.cwl
inputs:
- id: clean
  doc: 'Clean the output and partial data produced for the specified project (default:
    None)'
  type: string
  inputBinding:
    prefix: --clean
- id: output
  doc: 'Output folder name, otherwise it will be the name of the input folder concatenated
    with the name of the database used (default: None)'
  type: string
  inputBinding:
    prefix: --output
- id: database
  doc: 'The name of the database of markers to use. (default: None)'
  type: string
  inputBinding:
    prefix: --database
- id: db_type
  doc: 'Specify the type of the database of markers, where "n" stands for nucleotides
    and "a" for amino acids. If not specified, PhyloPhlAn will automatically detect
    the type of database (default: None)'
  type: string
  inputBinding:
    prefix: --db_type
- id: config_file
  doc: 'The configuration file to load, four ready-to-use configuration files can
    be generated using the "write_default_configs.sh" script present in the "configs"
    folder (default: None)'
  type: string
  inputBinding:
    prefix: --config_file
- id: diversity
  doc: 'Specify the expected diversity of the phylogeny, automatically adjust some
    parameters: "low": for genus-/species-/strain-level phylogenies; "medium": for
    class-/order-level phylogenies; "high": for phylum-/tree-of-life size phylogenies
    (default: None)'
  type: string
  inputBinding:
    prefix: --diversity
- id: accurate
  doc: 'Use more phylogenetic signal which can result in more accurate phylogeny;
    affected parameters depend on the "--diversity" level (default: False)'
  type: boolean
  inputBinding:
    prefix: --accurate
- id: fast
  doc: 'Perform more a faster phylogeny reconstruction by reducing the phylogenetic
    positions to use; affected parameters depend on the "--diversity" level (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --fast
- id: clean_all
  doc: 'Remove all installation and database files automatically generated (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --clean_all
- id: database_list
  doc: 'List of all the available databases that can be specified with the -d/--database
    option (default: False)'
  type: boolean
  inputBinding:
    prefix: --database_list
- id: sub_mat
  doc: 'Specify the substitution matrix to use, available substitution matrices can
    be listed with "-- submat_list" (default: None)'
  type: string
  inputBinding:
    prefix: --submat
- id: sub_mat_list
  doc: 'List of all the available substitution matrices that can be specified with
    the -s/--submat option (default: False)'
  type: boolean
  inputBinding:
    prefix: --submat_list
- id: sub_mod_list
  doc: 'List of all the available substitution models that can be specified with the
    --maas option (default: False)'
  type: boolean
  inputBinding:
    prefix: --submod_list
- id: nproc
  doc: 'The number of cores to use (default: 1)'
  type: string
  inputBinding:
    prefix: --nproc
- id: min_num_proteins
  doc: 'Proteomes with less than this number of proteins will be discarded (default:
    1)'
  type: long
  inputBinding:
    prefix: --min_num_proteins
- id: min_len_protein
  doc: 'Proteins in proteomes shorter than this value will be discarded (default:
    50)'
  type: long
  inputBinding:
    prefix: --min_len_protein
- id: min_num_markers
  doc: 'Input genomes or proteomes that map to less than the specified number of markers
    will be discarded (default: 1)'
  type: long
  inputBinding:
    prefix: --min_num_markers
- id: trim
  doc: 'Specify which type of trimming to perform: "gap_trim": execute what specified
    in the "trim" section of the configuration file; "gap_perc": remove columns with
    a percentage of gaps above a certain threshold (see "-- gap_perc_threshold" parameter)"not_variant":
    remove columns with at least one nucleotide/amino acid appearing above a certain
    threshold (see "-- not_variant_threshold" parameter); "greedy": performs all the
    above trimming steps; If not specified, no trimming will be performed (default:
    None)'
  type: string
  inputBinding:
    prefix: --trim
- id: gap_perc_threshold
  doc: 'Specify the value used to consider a column not variant when "--trim not_variant"
    is specified (default: 0.67)'
  type: string
  inputBinding:
    prefix: --gap_perc_threshold
- id: not_variant_threshold
  doc: 'Specify the value used to consider a column not variant when "--trim not_variant"
    is specified (default: 0.99)'
  type: string
  inputBinding:
    prefix: --not_variant_threshold
- id: subsample
  doc: 'The number of positions to retain from each single marker, available option
    are: "phylophlan": specific number of positions for each PhyloPhlAn marker (only
    when "--database phylophlan"); "onethousand": return the top 1000 positions; "sevenhundred":
    return the top 700; "fivehundred": return the top 500; "threehundred" return the
    top 300; "onehundred": return the top 100 positions; "fifty": return the top 50
    positions; "twentyfive": return the top 25 positions; "fiftypercent": return the
    top 50 percent positions; "twentyfivepercent": return the top 25% positions; "tenpercent":
    return the top 10% positions; If not specified, the complete alignment will be
    used (default: None)'
  type: string
  inputBinding:
    prefix: --subsample
- id: unknown_fraction
  doc: 'Define the amount of unknowns ("X" and "-") allowed in each column of the
    MSA of the markers (default: 0.3)'
  type: string
  inputBinding:
    prefix: --unknown_fraction
- id: scoring_function
  doc: 'Specify which scoring function to use to evaluate columns in the MSA results
    (default: None)'
  type: string
  inputBinding:
    prefix: --scoring_function
- id: sort
  doc: 'If specified, the markers will be ordered, when using the PhyloPhlAn database,
    it will be automatically set to "True" (default: False)'
  type: boolean
  inputBinding:
    prefix: --sort
- id: remove_fragmentary_entries
  doc: 'If specified the MSAs will be checked and cleaned from fragmentary entries.
    See --fragmentary_threshold for the threshold values above which an entry will
    be considered fragmentary (default: False)'
  type: boolean
  inputBinding:
    prefix: --remove_fragmentary_entries
- id: fragmentary_threshold
  doc: 'The fraction of gaps in the MSA to be considered fragmentary and hence discarded
    (default: 0.85)'
  type: string
  inputBinding:
    prefix: --fragmentary_threshold
- id: min_num_entries
  doc: 'The minimum number of entries to be present for each of the markers in the
    database (default: 4)'
  type: long
  inputBinding:
    prefix: --min_num_entries
- id: maas
  doc: 'Select a mapping file that specifies the substitution model of amino acid
    to use for each of the markers for the gene tree reconstruction. File must be
    tab- separated (default: None)'
  type: string
  inputBinding:
    prefix: --maas
- id: remove_only_gaps_entries
  doc: 'If specified, entries in the MSAs composed only of gaps ("-") will be removed.
    This is equivalent to specify "--remove_fragmentary_entries --fragmentary_threshold
    1" (default: False)'
  type: boolean
  inputBinding:
    prefix: --remove_only_gaps_entries
- id: mutation_rates
  doc: 'If specified will produced a mutation rates table for each of the aligned
    markers and a summary table for the concatenated MSA. This operation can take
    a long time to finish (default: False)'
  type: boolean
  inputBinding:
    prefix: --mutation_rates
- id: force_nucleotides
  doc: 'If specified force PhyloPhlAn to use nucleotide sequences for the phylogenetic
    analysis, even in the case of a database of amino acids (default: False)'
  type: boolean
  inputBinding:
    prefix: --force_nucleotides
- id: update
  doc: 'Update the databases file (default: False)'
  type: boolean
  inputBinding:
    prefix: --update
- id: verbose
  doc: 'Makes PhyloPhlAn verbose (default: False)'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: input_folder
  doc: 'Path to the folder containing the input data (default: input/)'
  type: string
  inputBinding:
    prefix: --input_folder
- id: data_folder
  doc: "Path to the folder where to store the intermediate files, default is \"tmp\"\
    \ inside the project's output folder (default: None)"
  type: string
  inputBinding:
    prefix: --data_folder
- id: databases_folder
  doc: 'Path to the folder containing the database files (default: phylophlan_databases/)'
  type: string
  inputBinding:
    prefix: --databases_folder
- id: sub_mat_folder
  doc: 'Path to the folder containing the substitution matrices to use to compute
    the column score for the subsampling step (default: phylophlan_substitution_matrices/)'
  type: string
  inputBinding:
    prefix: --submat_folder
- id: sub_mod_folder
  doc: 'Path to the folder containing the mapping file with substitution models for
    each marker for the gene tree building (default: phylophlan_substitution_models/)'
  type: string
  inputBinding:
    prefix: --submod_folder
- id: configs_folder
  doc: 'Path to the folder containing the configuration files (default: phylophlan_configs/)'
  type: string
  inputBinding:
    prefix: --configs_folder
- id: output_folder
  doc: 'Path to the output folder where to save the results (default: )'
  type: string
  inputBinding:
    prefix: --output_folder
- id: genome_extension
  doc: 'Extension for input genomes (default: .fna)'
  type: string
  inputBinding:
    prefix: --genome_extension
- id: proteome_extension
  doc: 'Extension for input proteomes (default: .faa)'
  type: string
  inputBinding:
    prefix: --proteome_extension
outputs: []
cwlVersion: v1.1
baseCommand:
- phylophlan
