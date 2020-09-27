class: CommandLineTool
id: megablast.cwl
inputs:
- id: in_database_default_nr
  doc: "Database [String]\ndefault = nr"
  type: boolean
  inputBinding:
    prefix: -d
- id: in_query_file
  doc: Query File [File In]
  type: boolean
  inputBinding:
    prefix: -i
- id: in_expectation_value_default
  doc: "Expectation value [Real]\ndefault = 10.0"
  type: boolean
  inputBinding:
    prefix: -e
- id: in_alignment_view_options
  doc: 'alignment view options:'
  type: boolean
  inputBinding:
    prefix: -m
- id: in_blast_report_file
  doc: "BLAST report Output File [File Out]  Optional\ndefault = stdout"
  type: File
  inputBinding:
    prefix: -o
- id: in_filter_query_sequence
  doc: "Filter query sequence [String]\ndefault = T"
  type: boolean
  inputBinding:
    prefix: -F
- id: in_x_dropoff_value_gapped
  doc: "X dropoff value for gapped alignment (in bits) [Integer]\ndefault = 20"
  type: boolean
  inputBinding:
    prefix: -X
- id: in_show_gis_f
  doc: "Show GI's in deflines [T/F]\ndefault = F"
  type: boolean
  inputBinding:
    prefix: -I
- id: in_penalty_nucleotide_mismatch
  doc: "Penalty for a nucleotide mismatch [Integer]\ndefault = -3"
  type: boolean
  inputBinding:
    prefix: -q
- id: in_reward_nucleotide_match
  doc: "Reward for a nucleotide match [Integer]\ndefault = 1"
  type: boolean
  inputBinding:
    prefix: -r
- id: in_number_show_descriptions
  doc: "Number of database sequences to show one-line descriptions for (V) [Integer]\n\
    default = 500"
  type: boolean
  inputBinding:
    prefix: -v
- id: in_number_show_alignments
  doc: "Number of database sequence to show alignments for (B) [Integer]\ndefault\
    \ = 250"
  type: boolean
  inputBinding:
    prefix: -b
- id: in_type_of_output
  doc: 'Type of output:'
  type: boolean
  inputBinding:
    prefix: -D
- id: in_number_use_default
  doc: "Number of processors to use [Integer]\ndefault = 1"
  type: boolean
  inputBinding:
    prefix: -a
- id: in_asn_seqalign_file
  doc: ASN.1 SeqAlign file; must be used in conjunction with -D2 option [File Out]  Optional
  type: File
  inputBinding:
    prefix: -O
- id: in_believe_query_defline
  doc: "Believe the query defline [T/F]  Optional\ndefault = F"
  type: boolean
  inputBinding:
    prefix: -J
- id: in_maximal_total_length
  doc: "Maximal total length of queries for a single search [Integer]\ndefault = 5000000"
  type: boolean
  inputBinding:
    prefix: -M
- id: in_word_size_length
  doc: "Word size (length of best perfect match) [Integer]\ndefault = 28"
  type: boolean
  inputBinding:
    prefix: -W
- id: in_effective_length_zero
  doc: "Effective length of the database (use zero for the real size) [Real]\ndefault\
    \ = 0"
  type: boolean
  inputBinding:
    prefix: -z
- id: in_effective_length_search
  doc: "Effective length of the search space (use zero for the real size) [Real]\n\
    default = 0"
  type: boolean
  inputBinding:
    prefix: -Y
- id: in_maximal_number_positions
  doc: "Maximal number of positions for a hash value (set to 0 to ignore) [Integer]\n\
    default = 0"
  type: boolean
  inputBinding:
    prefix: -P
- id: in_query_strands_search
  doc: "Query strands to search against database: 3 is both, 1 is top, 2 is bottom\
    \ [Integer]\ndefault = 3"
  type: boolean
  inputBinding:
    prefix: -S
- id: in_produce_html_output
  doc: "Produce HTML output [T/F]\ndefault = F"
  type: boolean
  inputBinding:
    prefix: -T
- id: in_restrict_search_database
  doc: Restrict search of database to list of GI's [String]  Optional
  type: boolean
  inputBinding:
    prefix: -l
- id: in_cost_open_gap
  doc: "Cost to open a gap (-1 invokes default behavior) [Integer]\ndefault = -1"
  type: boolean
  inputBinding:
    prefix: -G
- id: in_cost_extend_gap
  doc: "Cost to extend a gap (-1 invokes default behavior) [Integer]\ndefault = -1"
  type: boolean
  inputBinding:
    prefix: -E
- id: in_minimal_hit_score
  doc: "Minimal hit score to report (0 for default behavior) [Integer]\ndefault =\
    \ 0"
  type: boolean
  inputBinding:
    prefix: -s
- id: in_masked_query_output
  doc: Masked query output, must be used in conjunction with -D 2 option [File Out]  Optional
  type: File
  inputBinding:
    prefix: -Q
- id: in_show_full_ids
  doc: "Show full IDs in the output (default - only GIs or accessions) [T/F]\ndefault\
    \ = F"
  type: boolean
  inputBinding:
    prefix: -f
- id: in_use_case_filtering
  doc: "Use lower case filtering of FASTA sequence [T/F]  Optional\ndefault = F"
  type: boolean
  inputBinding:
    prefix: -U
- id: in_report_log_information
  doc: "Report the log information at the end of output [T/F]  Optional\ndefault =\
    \ F"
  type: boolean
  inputBinding:
    prefix: -R
- id: in_identity_percentage_cutoff
  doc: "Identity percentage cut-off [Real]\ndefault = 0"
  type: boolean
  inputBinding:
    prefix: -p
- id: in_location_query_optional
  doc: Location on query sequence [String]  Optional
  type: boolean
  inputBinding:
    prefix: -L
- id: in_multiple_hits_window
  doc: "Multiple Hits window size; default is 0 (i.e. single-hit extensions) or 40\
    \ for discontiguous template (negative number overrides this) [Integer]\ndefault\
    \ = 0"
  type: boolean
  inputBinding:
    prefix: -A
- id: in_x_dropoff_value_ungapped
  doc: "X dropoff value for ungapped extension [Integer]\ndefault = 10"
  type: boolean
  inputBinding:
    prefix: -y
- id: in_x_dropoff_value_dynamic
  doc: "X dropoff value for dynamic programming gapped extension [Integer]\ndefault\
    \ = 50"
  type: boolean
  inputBinding:
    prefix: -Z
- id: in_length_discontiguous_default
  doc: "Length of a discontiguous word template (contiguous word if 0) [Integer]\n\
    default = 0"
  type: boolean
  inputBinding:
    prefix: -t
- id: in_make_megablast_generate
  doc: "Make discontiguous megablast generate words for every base of the database\
    \ (mandatory with the current BLAST engine) [T/F]  Optional\ndefault = T"
  type: boolean
  inputBinding:
    prefix: -g
- id: in_use_nongreedy_extension
  doc: "Use non-greedy (dynamic programming) extension for affine gap scores [T/F]\
    \  Optional\ndefault = F"
  type: boolean
  inputBinding:
    prefix: -n
- id: in_type_two_default
  doc: "Type of a discontiguous word template (0 - coding, 1 - optimal, 2 - two simultaneous\
    \ [Integer]\ndefault = 0"
  type: boolean
  inputBinding:
    prefix: -N
- id: in_maximal_number_save
  doc: "Maximal number of HSPs to save per database sequence (0 = unlimited) [Integer]\n\
    default = 0"
  type: boolean
  inputBinding:
    prefix: -H
- id: in_force_use_legacy
  doc: "Force use of the legacy BLAST engine [T/F]  Optional\ndefault = F\n"
  type: boolean
  inputBinding:
    prefix: -V
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_blast_report_file
  doc: "BLAST report Output File [File Out]  Optional\ndefault = stdout"
  type: File
  outputBinding:
    glob: $(inputs.in_blast_report_file)
- id: out_asn_seqalign_file
  doc: ASN.1 SeqAlign file; must be used in conjunction with -D2 option [File Out]  Optional
  type: File
  outputBinding:
    glob: $(inputs.in_asn_seqalign_file)
- id: out_masked_query_output
  doc: Masked query output, must be used in conjunction with -D 2 option [File Out]  Optional
  type: File
  outputBinding:
    glob: $(inputs.in_masked_query_output)
cwlVersion: v1.1
baseCommand:
- megablast
