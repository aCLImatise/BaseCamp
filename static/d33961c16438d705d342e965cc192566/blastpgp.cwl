class: CommandLineTool
id: blastpgp.cwl
inputs:
- id: in_database_default_nr
  doc: "Database [String]\ndefault = nr"
  type: boolean
  inputBinding:
    prefix: -d
- id: in_query_file_needed
  doc: "Query File (not needed if restarting from scoremat) [File In]  Optional\n\
    default = stdin"
  type: boolean
  inputBinding:
    prefix: -i
- id: in_multiple_hits_window
  doc: "Multiple Hits window size [Integer]\ndefault = 40"
  type: boolean
  inputBinding:
    prefix: -A
- id: in_threshold_extending_default
  doc: "Threshold for extending hits [Integer]\ndefault = 11"
  type: boolean
  inputBinding:
    prefix: -f
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
- id: in_output_file_alignment
  doc: "Output File for Alignment [File Out]  Optional\ndefault = stdout"
  type: File
  inputBinding:
    prefix: -o
- id: in_dropoff_x_default
  doc: "Dropoff (X) for blast extensions in bits (default if zero) [Real]\ndefault\
    \ = 7.0"
  type: boolean
  inputBinding:
    prefix: -y
- id: in_multiple_hit_single
  doc: "0 for multiple hit, 1 for single hit [Integer]\ndefault = 0"
  type: boolean
  inputBinding:
    prefix: -P
- id: in_filter_query_sequence
  doc: "Filter query sequence with SEG [String]\ndefault = F"
  type: boolean
  inputBinding:
    prefix: -F
- id: in_cost_open_default
  doc: "Cost to open a gap [Integer]\ndefault = 11"
  type: boolean
  inputBinding:
    prefix: -G
- id: in_cost_extend_default
  doc: "Cost to extend a gap [Integer]\ndefault = 1"
  type: boolean
  inputBinding:
    prefix: -E
- id: in_x_dropoff_value_gapped
  doc: "X dropoff value for gapped alignment (in bits) [Integer]\ndefault = 15"
  type: boolean
  inputBinding:
    prefix: -X
- id: in_number_trigger_default
  doc: "Number of bits to trigger gapping [Real]\ndefault = 22.0"
  type: boolean
  inputBinding:
    prefix: -N
- id: in_start_required_region
  doc: "Start of required region in query [Integer]\ndefault = 1"
  type: boolean
  inputBinding:
    prefix: -S
- id: in_end_required_region
  doc: "End of required region in query (-1 indicates end of query) [Integer]\ndefault\
    \ = -1"
  type: boolean
  inputBinding:
    prefix: -H
- id: in_number_use_default
  doc: "Number of processors to use [Integer]\ndefault = 1"
  type: boolean
  inputBinding:
    prefix: -a
- id: in_show_gis_f
  doc: "Show GI's in deflines [T/F]\ndefault = F"
  type: boolean
  inputBinding:
    prefix: -I
- id: in_constant_pseudocounts_multipass
  doc: "Constant in pseudocounts for multipass version; 0 uses entropy method; otherwise\
    \ a value near 30 is recommended [Integer]\ndefault = 0"
  type: boolean
  inputBinding:
    prefix: -c
- id: in_maximum_number_passes
  doc: "Maximum number of passes to use in  multipass version [Integer]\ndefault =\
    \ 1"
  type: boolean
  inputBinding:
    prefix: -j
- id: in_believe_query_default
  doc: "Believe the query defline [T/F]\ndefault = F"
  type: boolean
  inputBinding:
    prefix: -J
- id: in_x_dropoff_value_final
  doc: "X dropoff value for final gapped alignment (in bits) [Integer]\ndefault =\
    \ 25"
  type: boolean
  inputBinding:
    prefix: -Z
- id: in_seqalign_file_must
  doc: SeqAlign file ('Believe the query defline' must be TRUE) [File Out]  Optional
  type: File
  inputBinding:
    prefix: -O
- id: in_matrix_default_blosum
  doc: "Matrix [String]\ndefault = BLOSUM62"
  type: boolean
  inputBinding:
    prefix: -M
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
- id: in_output_file_psiblast_checkpointing
  doc: Output File for PSI-BLAST Checkpointing [File Out]  Optional
  type: File
  inputBinding:
    prefix: -C
- id: in_input_file_psiblast
  doc: Input File for PSI-BLAST Restart [File In]  Optional
  type: boolean
  inputBinding:
    prefix: -R
- id: in_word_size_default
  doc: "Word size [Integer]\ndefault = 3"
  type: boolean
  inputBinding:
    prefix: -W
- id: in_effective_length_zero
  doc: "Effective length of the database (use zero for the real size) [Real]\ndefault\
    \ = 0"
  type: boolean
  inputBinding:
    prefix: -z
- id: in_number_keep_default
  doc: "Number of best hits from a region to keep [Integer]\ndefault = 0"
  type: boolean
  inputBinding:
    prefix: -K
- id: in_compute_locally_optimal
  doc: "Compute locally optimal Smith-Waterman alignments [T/F]\ndefault = F"
  type: boolean
  inputBinding:
    prefix: -s
- id: in_effective_length_search
  doc: "Effective length of the search space (use zero for the real size) [Real]\n\
    default = 0"
  type: boolean
  inputBinding:
    prefix: -Y
- id: in_program_option_phiblast
  doc: "program option for PHI-BLAST [String]\ndefault = blastpgp"
  type: boolean
  inputBinding:
    prefix: -p
- id: in_hit_file_phiblast
  doc: "Hit File for PHI-BLAST [File In]\ndefault = hit_file"
  type: boolean
  inputBinding:
    prefix: -k
- id: in_produce_html_output
  doc: "Produce HTML output [T/F]\ndefault = F"
  type: boolean
  inputBinding:
    prefix: -T
- id: in_output_file_psiblast_matrix
  doc: Output File for PSI-BLAST Matrix in ASCII [File Out]  Optional
  type: File
  inputBinding:
    prefix: -Q
- id: in_input_alignment_file
  doc: Input Alignment File for PSI-BLAST Restart [File In]  Optional
  type: boolean
  inputBinding:
    prefix: -B
- id: in_restrict_search_database
  doc: Restrict search of database to list of GI's [String]  Optional
  type: boolean
  inputBinding:
    prefix: -l
- id: in_use_case_filtering
  doc: "Use lower case filtering of FASTA sequence [T/F]  Optional\ndefault = F"
  type: boolean
  inputBinding:
    prefix: -U
- id: in_use_composition_adjustment
  doc: Use composition based score adjustment
  type: boolean
  inputBinding:
    prefix: -t
- id: in_asn_scoremat_input
  doc: 'ASN.1 Scoremat input of checkpoint data:'
  type: boolean
  inputBinding:
    prefix: -q
- id: in_asn_scoremat_output
  doc: 'ASN.1 Scoremat output of checkpoint data:'
  type: boolean
  inputBinding:
    prefix: -u
- id: in_cost_decline_alignment
  doc: "Cost to decline alignment (disabled when 0) [Integer]\ndefault = 0\n"
  type: boolean
  inputBinding:
    prefix: -L
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_alignment
  doc: "Output File for Alignment [File Out]  Optional\ndefault = stdout"
  type: File
  outputBinding:
    glob: $(inputs.in_output_file_alignment)
- id: out_seqalign_file_must
  doc: SeqAlign file ('Believe the query defline' must be TRUE) [File Out]  Optional
  type: File
  outputBinding:
    glob: $(inputs.in_seqalign_file_must)
- id: out_output_file_psiblast_checkpointing
  doc: Output File for PSI-BLAST Checkpointing [File Out]  Optional
  type: File
  outputBinding:
    glob: $(inputs.in_output_file_psiblast_checkpointing)
- id: out_output_file_psiblast_matrix
  doc: Output File for PSI-BLAST Matrix in ASCII [File Out]  Optional
  type: File
  outputBinding:
    glob: $(inputs.in_output_file_psiblast_matrix)
cwlVersion: v1.1
baseCommand:
- blastpgp
