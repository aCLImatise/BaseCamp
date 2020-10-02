class: CommandLineTool
id: anvi_gen_variability_profile.cwl
inputs:
- id: in_profile_db
  doc: Anvi'o profile database
  type: string
  inputBinding:
    prefix: --profile-db
- id: in_contigs_db
  doc: "Anvi'o contigs database generated by 'anvi-gen-\ncontigs'"
  type: string
  inputBinding:
    prefix: --contigs-db
- id: in_structure_db
  doc: Anvi'o structure database.
  type: string
  inputBinding:
    prefix: --structure-db
- id: in_collection_name
  doc: Collection name.
  type: string
  inputBinding:
    prefix: --collection-name
- id: in_bin_id
  doc: Bin name you are interested in.
  type: string
  inputBinding:
    prefix: --bin-id
- id: in_splits_of_interest
  doc: "A file with split names. There should be only one\ncolumn in the file, and\
    \ each line should correspond to\na unique split name."
  type: File
  inputBinding:
    prefix: --splits-of-interest
- id: in_genes_of_interest
  doc: "A file with anvi'o gene caller IDs. There should be\nonly one column in the\
    \ file, and each line should\ncorrespond to a unique gene caller id (without a\n\
    column header)."
  type: File
  inputBinding:
    prefix: --genes-of-interest
- id: in_gene_caller_ids
  doc: "Gene caller ids. Multiple of them can be declared\nseparated by a delimiter\
    \ (the default is a comma). In\nanvi-gen-variability-profile, if you declare nothing\n\
    you will get all genes matching your other filtering\ncriteria. In other programs,\
    \ you may get everything,\nnothing, or an error. It really depends on the\nsituation.\
    \ Fortunately, mistakes are cheap, so it's\nworth a try."
  type: string
  inputBinding:
    prefix: --gene-caller-ids
- id: in_only_if_structure
  doc: "If provided, your genes of interest will be further\nsubset to only include\
    \ genes with structures in your\nstructure database, and therefore must be supplied\
    \ in\nconjunction with a structure database, i.e. `-s\n<your_structure_database>`.\
    \ If you did not specify\ngenes of interest, ALL genes will be subset to those\n\
    that have structures."
  type: boolean
  inputBinding:
    prefix: --only-if-structure
- id: in_samples_of_interest
  doc: "A file with samples names. There should be only one\ncolumn in the file, and\
    \ each line should correspond to\na unique sample name (without a column header)."
  type: File
  inputBinding:
    prefix: --samples-of-interest
- id: in_engine
  doc: Variability engine. The default is 'NT'.
  type: string
  inputBinding:
    prefix: --engine
- id: in_skip_synonym_ity
  doc: "Computing synonymity can be an expensive operation for\nlarge data sets. Provide\
    \ this flag to skip computing\nsynonymity. It only makes sense to provide this\
    \ flag\nwhen using --engine CDN."
  type: boolean
  inputBinding:
    prefix: --skip-synonymity
- id: in_num_positions_from_each_split
  doc: "Each split may have one or more variable positions. By\ndefault, anvi'o will\
    \ report every SNV position found\nin a given split. This parameter will help\
    \ you to\ndefine a cutoff for the maximum number of SNVs to be\nreported from\
    \ a split (if the number of SNVs is more\nthan the number you declare using this\
    \ parameter, the\npositions will be randomly subsampled)."
  type: long
  inputBinding:
    prefix: --num-positions-from-each-split
- id: in_min_departure_from_reference
  doc: "Takes a value between 0 and 1, where 1 is maximum\ndivergence from the reference.\
    \ Default is 0.000000.\nThe reference here observation that corresponds to a\n\
    given position in the mapped context."
  type: double
  inputBinding:
    prefix: --min-departure-from-reference
- id: in_max_departure_from_reference
  doc: "Similar to '--min-departure-from-reference', but\ndefines an upper limit for\
    \ divergence. The default is\n1.000000."
  type: double
  inputBinding:
    prefix: --max-departure-from-reference
- id: in_min_departure_from_consensus
  doc: "Takes a value between 0 and 1, where 1 is maximum\ndivergence from the consensus\
    \ for a given position.\nThe default is 0.000000. The consensus is the most\n\
    frequent observation at a given position."
  type: double
  inputBinding:
    prefix: --min-departure-from-consensus
- id: in_max_departure_from_consensus
  doc: "Similar to '--min-departure-from-consensus', but\ndefines an upper limit for\
    \ divergence. The default is\n1.000000."
  type: double
  inputBinding:
    prefix: --max-departure-from-consensus
- id: in_min_occurrence
  doc: "Minimum number of samples a nucleotide position should\nbe reported as variable.\
    \ Default is 1. If you set it\nto 2, for instance, each eligible variable position\n\
    will be expected to appear in at least two samples,\nwhich will reduce the impact\
    \ of stochastic, or\nunintelligible variable positions."
  type: long
  inputBinding:
    prefix: --min-occurrence
- id: in_min_coverage_in_each_sample
  doc: "Minimum coverage of a given variable nucleotide\nposition in all samples.\
    \ If a nucleotide position is\ncovered less than this value even in one sample,\
    \ it\nwill be removed from the analysis. Default is 0."
  type: long
  inputBinding:
    prefix: --min-coverage-in-each-sample
- id: in_quince_mode
  doc: "The default behavior is to report base frequencies of\nnucleotide positions\
    \ only if there is any variation\nreported during profiling (which by default\
    \ uses some\nheuristics to minimize the impact of error-driven\nvariation). So,\
    \ if there are 10 samples, and a given\nposition has been reported as a variable\
    \ site during\nprofiling in only one of those samples, there will be\nno information\
    \ will be stored in the database for the\nremaining 9. When this flag is used,\
    \ we go back to\neach sample, and report base frequencies for each\nsample at\
    \ this position even if they do not vary. It\nwill take considerably longer to\
    \ report when this flag\nis on, and the use of it will increase the file size\n\
    dramatically, however it is inevitable for some\nstatistical approaches (as well\
    \ as for some beautiful\nvisualizations)."
  type: boolean
  inputBinding:
    prefix: --quince-mode
- id: in_output_file
  doc: File path to store results.
  type: File
  inputBinding:
    prefix: --output-file
- id: in_include_contig_names
  doc: "Use this flag if you would like contig names for each\nvariable position to\
    \ be included in the output file as\na column. By default, we do not include contig\
    \ names\nsince they can practically double the output file size\nwithout any actual\
    \ benefit in most cases."
  type: boolean
  inputBinding:
    prefix: --include-contig-names
- id: in_include_split_names
  doc: "Use this flag if you would like split names for each\nvariable position to\
    \ be included in the output file as\na column."
  type: File
  inputBinding:
    prefix: --include-split-names
- id: in_compute_gene_coverage_stats
  doc: "If provided, gene coverage statistics will be appended\nfor each entry in\
    \ variability report. This is very\nuseful information, but will not be included\
    \ by\ndefault because it is an expensive operation, and may\ntake some additional\
    \ time.\n"
  type: boolean
  inputBinding:
    prefix: --compute-gene-coverage-stats
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: File path to store results.
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
- id: out_include_split_names
  doc: "Use this flag if you would like split names for each\nvariable position to\
    \ be included in the output file as\na column."
  type: File
  outputBinding:
    glob: $(inputs.in_include_split_names)
cwlVersion: v1.1
baseCommand:
- anvi-gen-variability-profile
