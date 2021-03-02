class: CommandLineTool
id: metaxa2.cwl
inputs:
- id: in_dna_fasta_fastq
  doc: ': DNA FASTA or FASTQ input file to investigate'
  type: string?
  inputBinding:
    prefix: -i
- id: in_base_names_output
  doc: ': Base for the names of output file(s)'
  type: File?
  inputBinding:
    prefix: -o
- id: in_dna_fastq_first
  doc: ': DNA FASTQ input file containing the first reads in the read pairs to investigate'
  type: string?
  inputBinding:
    prefix: '-1'
- id: in_dna_fastq_second
  doc: ': DNA FASTQ input file containing the second reads in the pairs to investigate'
  type: string?
  inputBinding:
    prefix: '-2'
- id: in_f
  doc: ': Specifies the format of the input file, default = auto'
  type: string?
  inputBinding:
    prefix: -f
- id: in_specifies_format_f
  doc: ': Specifies the format of the input file, default = f (off)'
  type: string?
  inputBinding:
    prefix: -z
- id: in_specifies_barcoding_gene
  doc: ': Specifies the barcoding gene Metaxa should look for, default is ssu'
  type: string?
  inputBinding:
    prefix: -g
- id: in_pair_file
  doc: ': DNA FASTQ file containing the pairs to the sequences in the input file'
  type: string?
  inputBinding:
    prefix: --pairfile
- id: in_format
  doc: ': Specifies the format of the input file, default = auto'
  type: string?
  inputBinding:
    prefix: --format
- id: in_mode
  doc: ': Controls the Metaxa2 operating mode, default = metagenome'
  type: string?
  inputBinding:
    prefix: --mode
- id: in_run_only_extraction_part
  doc: ': Run only the extraction part of Metaxa2, without classification, off (F)
    by default'
  type: string?
  inputBinding:
    prefix: -x
- id: in_run_only_classification_part
  doc: ': Run only the classification part of Metaxa2, without prior extraction, off
    (F) by default'
  type: string?
  inputBinding:
    prefix: -c
- id: in_path_directory_hmmprofile
  doc: ': A path to a directory of HMM-profile collections representing rRNA conserved
    regions, default is in the same directory as metaxa itself'
  type: string?
  inputBinding:
    prefix: -p
- id: in_blast_databased_used
  doc: ': The BLAST databased used for classification, default is in the same directory
    as metaxa itself'
  type: string?
  inputBinding:
    prefix: -d
- id: in_hmms_can
  doc: ': If the hmmscan has already been performed, this option can be used as the
    base for the hmmscan output files, and the hmmscan step will be skipped. Overrides
    the -o option, while a DNA FASTA file must still be supplied!'
  type: File?
  inputBinding:
    prefix: --hmmscan
- id: in_date
  doc: ': Adds a date and time stamp to the output directory, off (F) by default'
  type: Directory?
  inputBinding:
    prefix: --date
- id: in_plus
  doc: ': Runs blast search through blast+ instead of the legacy blastall engine,
    off (F) by default'
  type: string?
  inputBinding:
    prefix: --plus
- id: in_u_search
  doc: ': Runs usearch instead of blast, specify version, off (0) by default'
  type: string?
  inputBinding:
    prefix: --usearch
- id: in_u_search_bin
  doc: ": Specifies the location of the Usearch binary to be used, default is 'usearch'\
    \ only"
  type: string?
  inputBinding:
    prefix: --usearch_bin
- id: in_u_blast
  doc: ': Runs the Ublast algorithm instead of Usearch algorithm, default is on (T)'
  type: string?
  inputBinding:
    prefix: --ublast
- id: in_reset
  doc: ': Rebuilds the HMM database. Useful if HMMER has been updated or searches
    seem to fail mysteriously, off (F) by default'
  type: string?
  inputBinding:
    prefix: --reset
- id: in_minimum_quality_value
  doc: ': Minimum quality value for basecalling, default = 20'
  type: string?
  inputBinding:
    prefix: -q
- id: in_quality_filter
  doc: ': Filter out low-quality reads (below specified -q value), off (F) by default'
  type: string?
  inputBinding:
    prefix: --quality_filter
- id: in_quality_trim
  doc: ': Trim away ends of low quality (below -q value), off (F) by default'
  type: string?
  inputBinding:
    prefix: --quality_trim
- id: in_quality_percent
  doc: ': Percentage of low-quality (below -q value) accepted before filtering/trimming,
    default=10'
  type: string?
  inputBinding:
    prefix: --quality_percent
- id: in_ignore_paired_read
  doc: ': Do not discard the entire pair if only one of the reads is of bad quality,
    on (T) by default'
  type: string?
  inputBinding:
    prefix: --ignore_paired_read
- id: in_distance
  doc: ': Specifies the distance between the sequence pairs, default = 150'
  type: string?
  inputBinding:
    prefix: --distance
- id: in_profile_set_use
  doc: ': Profile set to use for the search (comma-separated), default is all'
  type: string?
  inputBinding:
    prefix: -t
- id: in_domain_evalue_cutoff
  doc: ': Domain E-value cutoff for a sequence to be included in the output, default
    = 1'
  type: string?
  inputBinding:
    prefix: -E
- id: in_domain_score_cutoff
  doc: ': Domain score cutoff for a sequence to be included in the output, default
    = 12'
  type: string?
  inputBinding:
    prefix: -S
- id: in_minimal_number_match
  doc: ': The minimal number of domains that must match a sequence before it is included,
    default = 2'
  type: string?
  inputBinding:
    prefix: -N
- id: in_number_sequence_matches
  doc: ': Number of sequence matches to consider for classification, default = 5'
  type: string?
  inputBinding:
    prefix: -M
- id: in_reliability_cutoff_taxonomic
  doc: ': Reliability cutoff for taxonomic classification, default = 75'
  type: string?
  inputBinding:
    prefix: -R
- id: in_sets_cutoff_classified
  doc: ": Sets the percent identity cutoff to be classified at a certain taxonomic\
    \ level\nBy default, these values are specified by the database used.\nOrder of\
    \ the values is:         Kingdom/Domain,Phylum,Class,Order,Family,Genus,Species\n\
    Default values for the SSU are: 0,60,70,75,85,90,97"
  type: string?
  inputBinding:
    prefix: -T
- id: in_number_prediction_given
  doc: ': The number of points that the Metaxa Extractor prediction is given, default
    is the same as the number of sequences (-M option)'
  type: string?
  inputBinding:
    prefix: -H
- id: in_selection_priority
  doc: ': Selects what will be of highest priority when determining the origin of
    the sequence, default is score'
  type: string?
  inputBinding:
    prefix: --selection_priority
- id: in_scoring_model
  doc: ": Selects the scoring model to be used for classification, select 'old' to\
    \ use the pre 2.2 scoring model, default = new"
  type: string?
  inputBinding:
    prefix: --scoring_model
- id: in_search_eval
  doc: ': The E-value cutoff used in the HMMER search, high numbers may slow down
    the process, cannot be used with the --search_score option, default is to use
    score cutoff, not E-value'
  type: string?
  inputBinding:
    prefix: --search_eval
- id: in_search_score
  doc: ': The score cutoff used in the HMMER search, low numbers may slow down the
    process, cannot be used with the --search_eval option, default = 0'
  type: string?
  inputBinding:
    prefix: --search_score
- id: in_blast_eval
  doc: ': The E-value cutoff used in the BLAST search, high numbers may slow down
    the process, cannot be used with the --blast_score option, default is 1e-5'
  type: string?
  inputBinding:
    prefix: --blast_eval
- id: in_blast_score
  doc: ': The score cutoff used in the BLAST search, low numbers may slow down the
    process, cannot be used with the --blast_eval option, default is to used E-value
    cutoff, not score'
  type: string?
  inputBinding:
    prefix: --blast_score
- id: in_blast_word_size
  doc: ': The word-size used for the BLAST-based classification, default is 14'
  type: string?
  inputBinding:
    prefix: --blast_wordsize
- id: in_allow_single_domain
  doc: ': Allow inclusion of sequences that only find a single domain, given that
    they satisfy the given E-value and score thresholds, on with parameters 1e-10,0
    by default'
  type: string?
  inputBinding:
    prefix: --allow_single_domain
- id: in_allow_reorder
  doc: ': Allows profiles to be in the wrong order on extracted sequences, on (T)
    by default'
  type: string?
  inputBinding:
    prefix: --allow_reorder
- id: in_complement
  doc: ': Checks both DNA strands against the database, creating reverse complements,
    on (T) by default'
  type: string?
  inputBinding:
    prefix: --complement
- id: in_cpu
  doc: ': The number of CPU threads to use, default is 1'
  type: string?
  inputBinding:
    prefix: --cpu
- id: in_multi_thread
  doc: ': Multi-thread the HMMER-search, on (T) if number of CPUs (--cpu option >
    1), else off (F) by default'
  type: string?
  inputBinding:
    prefix: --multi_thread
- id: in_heuristics
  doc: ": Selects whether to use HMMER's heuristic filtering, on (T) by default"
  type: string?
  inputBinding:
    prefix: --heuristics
- id: in_mega_blast
  doc: ': Uses megablast for classification for better speed but less accuracy, off
    (F) by default'
  type: string?
  inputBinding:
    prefix: --megablast
- id: in_reference
  doc: ': A file in FASTA format containing reference sequences to be sent to a separate
    file in the analysis, default is blank (unused)'
  type: string?
  inputBinding:
    prefix: --reference
- id: in_ref_identity
  doc: ': The sequence identity cutoff to be considered a sequence to be derived from
    a reference entry, default = 99'
  type: string?
  inputBinding:
    prefix: --ref_identity
- id: in_summary
  doc: ': Summary of results output, on (T) by default'
  type: string?
  inputBinding:
    prefix: --summary
- id: in_graphical
  doc: ": 'Graphical' output, on (T) by default"
  type: string?
  inputBinding:
    prefix: --graphical
- id: in_fast_a
  doc: ': FASTA-format output of extracted rRNA sequences, on (T) by default'
  type: string?
  inputBinding:
    prefix: --fasta
- id: in_split_pairs
  doc: ': Outputs the two read pairs separately instead of as a joint rRNA sequence,
    off (F) by default'
  type: string?
  inputBinding:
    prefix: --split_pairs
- id: in_table
  doc: ': Table format output of sequences containing probable rRNAs, off (F) by default'
  type: string?
  inputBinding:
    prefix: --table
- id: in_taxonomy
  doc: ': Table format output of probable taxonomic origin for sequences, on (T) by
    default'
  type: string?
  inputBinding:
    prefix: --taxonomy
- id: in_rel_tax
  doc: ': Output of probable taxonomic origin for sequences with reliability scores
    at each rank, off (F) by default'
  type: string?
  inputBinding:
    prefix: --reltax
- id: in_tax_level
  doc: ': Force Metaxa to classify sequences at a certain taxonomy level, regardless
    of reliability score, off (0) by default'
  type: string?
  inputBinding:
    prefix: --taxlevel
- id: in_not_found
  doc: ': Saves a list of non-found entries, off (F) by default'
  type: string?
  inputBinding:
    prefix: --not_found
- id: in_align
  doc: ": Outputs alignments of BLAST matches to query in all, uncertain or no cases,\
    \ requires MAFFT to be installed, default is 'none'"
  type: string?
  inputBinding:
    prefix: --align
- id: in_truncate
  doc: ': Truncates the FASTA output to only contain the putative rRNA sequence found,
    on (T) by default'
  type: string?
  inputBinding:
    prefix: --truncate
- id: in_guess_species
  doc: ': Writes a species guess (which can be pretty far off) to the FASTA definition
    line, off (F) by default (depreciated option, use --taxonomy instead)'
  type: string?
  inputBinding:
    prefix: --guess_species
- id: in_silent
  doc: ': Supresses printing progress info to stderr, off (F) by default'
  type: string?
  inputBinding:
    prefix: --silent
- id: in_graph_scale
  doc: ': Sets the scale of the graph output, if value is zero, a percentage view
    is shown, default = 0'
  type: string?
  inputBinding:
    prefix: --graph_scale
- id: in_save_raw
  doc: ': saves all raw data for searches etc. instead of removing it on finish, off
    (F) by default'
  type: string?
  inputBinding:
    prefix: --save_raw
- id: in_help
  doc: ': displays this help message'
  type: boolean?
  inputBinding:
    prefix: --help
- id: in_bugs
  doc: ': displays the bug fixes and known bugs in this version of Metaxa'
  type: boolean?
  inputBinding:
    prefix: --bugs
- id: in_license
  doc: ': displays licensing information'
  type: boolean?
  inputBinding:
    prefix: --license
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_base_names_output
  doc: ': Base for the names of output file(s)'
  type: File?
  outputBinding:
    glob: $(inputs.in_base_names_output)
- id: out_hmms_can
  doc: ': If the hmmscan has already been performed, this option can be used as the
    base for the hmmscan output files, and the hmmscan step will be skipped. Overrides
    the -o option, while a DNA FASTA file must still be supplied!'
  type: File?
  outputBinding:
    glob: $(inputs.in_hmms_can)
- id: out_date
  doc: ': Adds a date and time stamp to the output directory, off (F) by default'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_date)
hints: []
cwlVersion: v1.1
baseCommand:
- metaxa2
