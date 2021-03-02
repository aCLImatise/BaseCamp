class: CommandLineTool
id: metaxa2_c.cwl
inputs:
- id: in_dna_fasta_input
  doc: ': DNA FASTA input file of rRNA sequences to investigate'
  type: string?
  inputBinding:
    prefix: -i
- id: in_base_names_output
  doc: ': Base for the names of output file(s)'
  type: File?
  inputBinding:
    prefix: -o
- id: in_blast_databased_used
  doc: ': The BLAST databased used for classification, default is in the same directory
    as metaxa itself'
  type: string?
  inputBinding:
    prefix: -d
- id: in_date
  doc: ': Adds a date and time stamp to the output directory, off (F) by default'
  type: Directory?
  inputBinding:
    prefix: --date
- id: in_profile_set_use
  doc: ': Profile set to use for the search (comma-separated), default is all'
  type: string?
  inputBinding:
    prefix: -t
- id: in_specifies_barcoding_gene
  doc: ': Specifies the barcoding gene Metaxa should look for, default is ssu'
  type: string?
  inputBinding:
    prefix: -g
- id: in_mode
  doc: ': Controls the Metaxa2 operating mode, default = metagenome'
  type: string?
  inputBinding:
    prefix: --mode
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
    \ level\nOrder of the values is: Kingdom/Domain,Phylum,Class,Order,Family,Genus,Species\n\
    Default values are:     0,60,70,75,85,90,97"
  type: string?
  inputBinding:
    prefix: -T
- id: in_scoring_model
  doc: ": Selects the scoring model to be used for classification, select 'old' to\
    \ use the pre 2.2 scoring model, default = new"
  type: string?
  inputBinding:
    prefix: --scoring_model
- id: in_number_prediction_given
  doc: ': The number of points that the Metaxa Extractor prediction is given, default
    is the same as the number of sequences (-M option)'
  type: string?
  inputBinding:
    prefix: -H
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
- id: in_cpu
  doc: ': the number of CPU threads to use, default is 1'
  type: string?
  inputBinding:
    prefix: --cpu
- id: in_mega_blast
  doc: ': Uses megablast for classification for better speed but less accuracy, off
    (F) by default'
  type: string?
  inputBinding:
    prefix: --megablast
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
- id: in_fast_a
  doc: ': FASTA-format output of extracted rRNA sequences, on (T) by default'
  type: string?
  inputBinding:
    prefix: --fasta
- id: in_split_pairs
  doc: ': Outputs the two read pairs separately, off (F) by default'
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
- id: in_align
  doc: ": Outputs alignments of BLAST matches to query in all, uncertain or no cases,\
    \ requires MAFFT to be installed, default is 'none'"
  type: string?
  inputBinding:
    prefix: --align
- id: in_guess_species
  doc: ': Writes a species guess (which can be pretty far off) to the FASTA definition
    line, off (F) by default (depreciated option, use --taxonomy instead)'
  type: string?
  inputBinding:
    prefix: --guess_species
- id: in_not_found
  doc: ': Saves a list of non-found entries, off (F) by default'
  type: string?
  inputBinding:
    prefix: --not_found
- id: in_silent
  doc: ': Supresses printing progress info to stderr, off (F) by default'
  type: string?
  inputBinding:
    prefix: --silent
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
- id: out_date
  doc: ': Adds a date and time stamp to the output directory, off (F) by default'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_date)
hints: []
cwlVersion: v1.1
baseCommand:
- metaxa2_c
