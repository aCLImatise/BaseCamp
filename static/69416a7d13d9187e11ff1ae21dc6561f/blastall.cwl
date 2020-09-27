class: CommandLineTool
id: blastall.cwl
inputs:
- id: in_program_name
  doc: Program Name [String]
  type: boolean
  inputBinding:
    prefix: -p
- id: in_database_default_nr
  doc: "Database [String]\ndefault = nr"
  type: boolean
  inputBinding:
    prefix: -d
- id: in_query_file_default
  doc: "Query File [File In]\ndefault = stdin"
  type: boolean
  inputBinding:
    prefix: -i
- id: in_expectation_value_e
  doc: "Expectation value (E) [Real]\ndefault = 10.0"
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
  doc: "Filter query sequence (DUST with blastn, SEG with others) [String]\ndefault\
    \ = T"
  type: boolean
  inputBinding:
    prefix: -F
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
- id: in_x_dropoff_value_behaviorblastn
  doc: "X dropoff value for gapped alignment (in bits) (zero invokes default behavior)\n\
    blastn 30, megablast 20, tblastx 0, all others 15 [Integer]\ndefault = 0"
  type: boolean
  inputBinding:
    prefix: -X
- id: in_show_gis_f
  doc: "Show GI's in deflines [T/F]\ndefault = F"
  type: boolean
  inputBinding:
    prefix: -I
- id: in_penalty_nucleotide_mismatch
  doc: "Penalty for a nucleotide mismatch (blastn only) [Integer]\ndefault = -3"
  type: boolean
  inputBinding:
    prefix: -q
- id: in_reward_nucleotide_match
  doc: "Reward for a nucleotide match (blastn only) [Integer]\ndefault = 1"
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
- id: in_threshold_megablast_default
  doc: "Threshold for extending hits, default if zero\nblastp 11, blastn 0, blastx\
    \ 12, tblastn 13\ntblastx 13, megablast 0 [Real]\ndefault = 0"
  type: boolean
  inputBinding:
    prefix: -f
- id: in_perform_gapped_alignment
  doc: "Perform gapped alignment (not available with tblastx) [T/F]\ndefault = T"
  type: boolean
  inputBinding:
    prefix: -g
- id: in_query_genetic_code
  doc: "Query Genetic code to use [Integer]\ndefault = 1"
  type: boolean
  inputBinding:
    prefix: -Q
- id: in_db_genetic_code
  doc: "DB Genetic code (for tblast[nx] only) [Integer]\ndefault = 1"
  type: boolean
  inputBinding:
    prefix: -D
- id: in_number_use_default
  doc: "Number of processors to use [Integer]\ndefault = 1"
  type: boolean
  inputBinding:
    prefix: -a
- id: in_seqalign_file_optional
  doc: SeqAlign file [File Out]  Optional
  type: File
  inputBinding:
    prefix: -O
- id: in_believe_query_default
  doc: "Believe the query defline [T/F]\ndefault = F"
  type: boolean
  inputBinding:
    prefix: -J
- id: in_matrix_default_blosum
  doc: "Matrix [String]\ndefault = BLOSUM62"
  type: boolean
  inputBinding:
    prefix: -M
- id: in_word_size_default
  doc: "Word size, default if zero (blastn 11, megablast 28, all others 3) [Integer]\n\
    default = 0"
  type: boolean
  inputBinding:
    prefix: -W
- id: in_effective_length_zero
  doc: "Effective length of the database (use zero for the real size) [Real]\ndefault\
    \ = 0"
  type: boolean
  inputBinding:
    prefix: -z
- id: in_number_best_keep
  doc: Number of best hits from a region to keep. Off by default.
  type: boolean
  inputBinding:
    prefix: -K
- id: in_multiple_hit_single
  doc: "0 for multiple hit, 1 for single hit (does not apply to blastn) [Integer]\n\
    default = 0"
  type: boolean
  inputBinding:
    prefix: -P
- id: in_effective_length_search
  doc: "Effective length of the search space (use zero for the real size) [Real]\n\
    default = 0"
  type: boolean
  inputBinding:
    prefix: -Y
- id: in_query_strands_search
  doc: "Query strands to search against database (for blast[nx], and tblastx)\n3 is\
    \ both, 1 is top, 2 is bottom [Integer]\ndefault = 3"
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
- id: in_use_case_filtering
  doc: Use lower case filtering of FASTA sequence [T/F]  Optional
  type: boolean
  inputBinding:
    prefix: -U
- id: in_x_dropoff_value_ungapped
  doc: "X dropoff value for ungapped extensions in bits (0.0 invokes default behavior)\n\
    blastn 20, megablast 10, all others 7 [Real]\ndefault = 0.0"
  type: boolean
  inputBinding:
    prefix: -y
- id: in_x_dropoff_value_final
  doc: "X dropoff value for final gapped alignment in bits (0.0 invokes default behavior)\n\
    blastn/megablast 100, tblastx 0, all others 25 [Integer]\ndefault = 0"
  type: boolean
  inputBinding:
    prefix: -Z
- id: in_psitblastn_checkpoint_file
  doc: PSI-TBLASTN checkpoint file [File In]  Optional
  type: boolean
  inputBinding:
    prefix: -R
- id: in_megablast_search_default
  doc: "MegaBlast search [T/F]\ndefault = F"
  type: boolean
  inputBinding:
    prefix: -n
- id: in_location_query_optional
  doc: Location on query sequence [String]  Optional
  type: boolean
  inputBinding:
    prefix: -L
- id: in_multiple_hits_window
  doc: "Multiple Hits window size, default if zero (blastn/megablast 0, all others\
    \ 40 [Integer]\ndefault = 0"
  type: boolean
  inputBinding:
    prefix: -A
- id: in_frame_shift_penalty
  doc: "Frame shift penalty (OOF algorithm for blastx) [Integer]\ndefault = 0"
  type: boolean
  inputBinding:
    prefix: -w
- id: in_length_largest_intron
  doc: "Length of the largest intron allowed in a translated nucleotide sequence when\
    \ linking multiple distinct alignments. (0 invokes default behavior; a negative\
    \ value disables linking.) [Integer]\ndefault = 0"
  type: boolean
  inputBinding:
    prefix: -t
- id: in_number_concatenated_queries
  doc: "Number of concatenated queries, for blastn and tblastn [Integer]  Optional\n\
    default = 0"
  type: boolean
  inputBinding:
    prefix: -B
- id: in_force_use_legacy
  doc: "Force use of the legacy BLAST engine [T/F]  Optional\ndefault = F"
  type: boolean
  inputBinding:
    prefix: -V
- id: in_use_compositionbased_adjustments
  doc: "Use composition-based score adjustments for blastp or tblastn:\nAs first character:\n\
    D or d: default (equivalent to T)\n0 or F or f: no composition-based statistics\n\
    2 or T or t: Composition-based score adjustments as in Bioinformatics 21:902-911,\n\
    1: Composition-based statistics as in NAR 29:2994-3005, 2001\n2005, conditioned\
    \ on sequence properties\n3: Composition-based score adjustment as in Bioinformatics\
    \ 21:902-911,\n2005, unconditionally\nFor programs other than tblastn, must either\
    \ be absent or be D, F or 0.\nAs second character, if first character is equivalent\
    \ to 1, 2, or 3:\nU or u: unified p-value combining alignment p-value and compositional\
    \ p-value in round 1 only"
  type: boolean
  inputBinding:
    prefix: -C
- id: in_compute_locally_optimal
  doc: "Compute locally optimal Smith-Waterman alignments (This option is only\navailable\
    \ for gapped tblastn.) [T/F]\ndefault = F\n"
  type: boolean
  inputBinding:
    prefix: -s
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_blast_report_file
  doc: "BLAST report Output File [File Out]  Optional\ndefault = stdout"
  type: File
  outputBinding:
    glob: $(inputs.in_blast_report_file)
- id: out_seqalign_file_optional
  doc: SeqAlign file [File Out]  Optional
  type: File
  outputBinding:
    glob: $(inputs.in_seqalign_file_optional)
cwlVersion: v1.1
baseCommand:
- blastall
