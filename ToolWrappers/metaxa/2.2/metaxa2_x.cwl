class: CommandLineTool
id: metaxa2_x.cwl
inputs:
- id: in_dna_fasta_input
  doc: ': DNA FASTA input file to investigate'
  type: string
  inputBinding:
    prefix: -i
- id: in_base_names_output
  doc: ': Base for the names of output file(s)'
  type: File
  inputBinding:
    prefix: -o
- id: in_path_directory_hmmprofile
  doc: ': A path to a directory of HMM-profile collections representing rRNA conserved
    regions, default is in the same directory as metaxa itself'
  type: string
  inputBinding:
    prefix: -p
- id: in_hmm_search
  doc: ': If the hmmsearch has already been performed, this option can be used as
    the base for the hmmsearch output files, and the hmmsearch step will be skipped.
    Overrides the -o option, while a DNA FASTA file must still be supplied!'
  type: File
  inputBinding:
    prefix: --hmmsearch
- id: in_date
  doc: ': Adds a date and time stamp to the output directory, off (F) by default'
  type: Directory
  inputBinding:
    prefix: --date
- id: in_reset
  doc: ': Rebuilds the HMM database. Useful if HMMER has been updated or searches
    seem to fail mysteriously, off (F) by default'
  type: string
  inputBinding:
    prefix: --reset
- id: in_profile_set_use
  doc: ': Profile set to use for the search (comma-separated), default is all'
  type: string
  inputBinding:
    prefix: -t
- id: in_specifies_barcoding_gene
  doc: ': Specifies the barcoding gene Metaxa should look for, default is ssu'
  type: string
  inputBinding:
    prefix: -g
- id: in_mode
  doc: ': Controls the Metaxa2 operating mode, default = metagenome'
  type: string
  inputBinding:
    prefix: --mode
- id: in_domain_evalue_cutoff
  doc: ': Domain E-value cutoff for a sequence to be included in the output, default
    = 1'
  type: string
  inputBinding:
    prefix: -E
- id: in_domain_score_cutoff
  doc: ': Domain score cutoff for a sequence to be included in the output, default
    = 12'
  type: string
  inputBinding:
    prefix: -S
- id: in_minimal_number_match
  doc: ': The minimal number of domains that must match a sequence before it is included,
    default = 2'
  type: string
  inputBinding:
    prefix: -N
- id: in_selection_priority
  doc: ': Selects what will be of highest priority when determining the origin of
    the sequence, default is sum'
  type: string
  inputBinding:
    prefix: --selection_priority
- id: in_search_eval
  doc: ': The E-value cutoff used in the HMMER search, high numbers may slow down
    the process, cannot be used with the --search_score option, default is to use
    score cutoff, not E-value'
  type: string
  inputBinding:
    prefix: --search_eval
- id: in_search_score
  doc: ': The score cutoff used in the HMMER search, low numbers may slow down the
    process, cannot be used with the --search_eval option, default = 0'
  type: string
  inputBinding:
    prefix: --search_score
- id: in_allow_single_domain
  doc: ': Allow inclusion of sequences that only find a single domain, given that
    they meet the given E-value and score thresholds, on with parameters 1e-10,0 by
    default'
  type: string
  inputBinding:
    prefix: --allow_single_domain
- id: in_allow_reorder
  doc: ': Allows profiles to be in the wrong order on extracted sequences, on (T)
    by default'
  type: string
  inputBinding:
    prefix: --allow_reorder
- id: in_complement
  doc: ': Checks both DNA strands against the database, creating reverse complements,
    on (T) by default'
  type: string
  inputBinding:
    prefix: --complement
- id: in_cpu
  doc: ': the number of CPU threads to use, default is 1'
  type: string
  inputBinding:
    prefix: --cpu
- id: in_multi_thread
  doc: ': Multi-thread the HMMER-search, on (T) if number of CPUs (--cpu option >
    1), else off (F) by default'
  type: string
  inputBinding:
    prefix: --multi_thread
- id: in_heuristics
  doc: ": Selects whether to use HMMER's heuristic filtering, on (T) by default"
  type: string
  inputBinding:
    prefix: --heuristics
- id: in_summary
  doc: ': Summary of results output, on (T) by default'
  type: string
  inputBinding:
    prefix: --summary
- id: in_graphical
  doc: ": 'Graphical' output, on (T) by default"
  type: string
  inputBinding:
    prefix: --graphical
- id: in_fast_a
  doc: ': FASTA-format output of extracted rRNA sequences, on (T) by default'
  type: string
  inputBinding:
    prefix: --fasta
- id: in_table
  doc: ': Table format output of sequences containing probable rRNAs, off (F) by default'
  type: string
  inputBinding:
    prefix: --table
- id: in_not_found
  doc: ': Saves a list of non-found entries, off (F) by default'
  type: string
  inputBinding:
    prefix: --not_found
- id: in_truncate
  doc: ': Truncates the FASTA output to only contain the putative rRNA sequence found,
    on (T) by default'
  type: string
  inputBinding:
    prefix: --truncate
- id: in_silent
  doc: ': Supresses printing progress info to stderr, off (F) by default'
  type: string
  inputBinding:
    prefix: --silent
- id: in_graph_scale
  doc: ': Sets the scale of the graph output, if value is zero, a percentage view
    is shown, default = 0'
  type: string
  inputBinding:
    prefix: --graph_scale
- id: in_save_raw
  doc: ': Saves all raw data for searches etc. instead of removing it on finish, off
    (F) by default'
  type: string
  inputBinding:
    prefix: --save_raw
- id: in_help
  doc: ': displays this help message'
  type: boolean
  inputBinding:
    prefix: --help
- id: in_bugs
  doc: ': displays the bug fixes and known bugs in this version of Metaxa'
  type: boolean
  inputBinding:
    prefix: --bugs
- id: in_license
  doc: ': displays licensing information'
  type: boolean
  inputBinding:
    prefix: --license
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_base_names_output
  doc: ': Base for the names of output file(s)'
  type: File
  outputBinding:
    glob: $(inputs.in_base_names_output)
- id: out_hmm_search
  doc: ': If the hmmsearch has already been performed, this option can be used as
    the base for the hmmsearch output files, and the hmmsearch step will be skipped.
    Overrides the -o option, while a DNA FASTA file must still be supplied!'
  type: File
  outputBinding:
    glob: $(inputs.in_hmm_search)
- id: out_date
  doc: ': Adds a date and time stamp to the output directory, off (F) by default'
  type: Directory
  outputBinding:
    glob: $(inputs.in_date)
cwlVersion: v1.1
baseCommand:
- metaxa2_x
