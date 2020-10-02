class: CommandLineTool
id: bl2seq.cwl
inputs:
- id: in_first_sequence
  doc: First sequence [File In]
  type: boolean
  inputBinding:
    prefix: -i
- id: in_second_sequence
  doc: Second sequence [File In]
  type: boolean
  inputBinding:
    prefix: -j
- id: in_program_name_blastp
  doc: 'Program name: blastp, blastn, blastx, tblastn, tblastx. For blastx 1st sequence
    should be nucleotide, tblastn 2nd sequence nucleotide [String]'
  type: boolean
  inputBinding:
    prefix: -p
- id: in_gapped_default_t
  doc: "Gapped [T/F]\ndefault = T"
  type: boolean
  inputBinding:
    prefix: -g
- id: in_alignment_output_file
  doc: "alignment output file [File Out]\ndefault = stdout"
  type: File
  inputBinding:
    prefix: -o
- id: in_theor_db_size
  doc: "theor. db size (zero is real size) [Real]\ndefault = 0"
  type: boolean
  inputBinding:
    prefix: -d
- id: in_text_asn_output
  doc: Text ASN.1 output file [File Out]  Optional
  type: File
  inputBinding:
    prefix: -a
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
- id: in_x_dropoff_value
  doc: "X dropoff value for gapped alignment (in bits) (zero invokes default behavior)\n\
    blastn 30, megablast 20, tblastx 0, all others 15 [Integer]\ndefault = 0"
  type: boolean
  inputBinding:
    prefix: -X
- id: in_word_size_default
  doc: "Word size, default if zero (blastn 11, megablast 28, all others 3) [Integer]\n\
    default = 0"
  type: boolean
  inputBinding:
    prefix: -W
- id: in_matrix_default_blosum
  doc: "Matrix [String]\ndefault = BLOSUM62"
  type: boolean
  inputBinding:
    prefix: -M
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
- id: in_filter_query_sequence
  doc: "Filter query sequence (DUST with blastn, SEG with others) [String]\ndefault\
    \ = T"
  type: boolean
  inputBinding:
    prefix: -F
- id: in_expectation_value_e
  doc: "Expectation value (E) [Real]\ndefault = 10.0"
  type: boolean
  inputBinding:
    prefix: -e
- id: in_query_strands_search
  doc: "Query strands to search against database (blastn only).  3 is both, 1 is top,\
    \ 2 is bottom [Integer]\ndefault = 3"
  type: boolean
  inputBinding:
    prefix: -S
- id: in_produce_html_output
  doc: "Produce HTML output [T/F]\ndefault = F"
  type: boolean
  inputBinding:
    prefix: -T
- id: in_use_mega_blast
  doc: "Use Mega Blast for search [T/F]  Optional\ndefault = F"
  type: boolean
  inputBinding:
    prefix: -m
- id: in_effective_length_search
  doc: "Effective length of the search space (use zero for the real size) [Real]\n\
    default = 0"
  type: boolean
  inputBinding:
    prefix: -Y
- id: in_length_largest_intron
  doc: "Length of the largest intron allowed in tblastn for linking HSPs [Integer]\n\
    default = 0"
  type: boolean
  inputBinding:
    prefix: -t
- id: in_location_first_optional
  doc: Location on first sequence [String]  Optional
  type: boolean
  inputBinding:
    prefix: -I
- id: in_location_second_optional
  doc: Location on second sequence [String]  Optional
  type: boolean
  inputBinding:
    prefix: -J
- id: in_output_format_traditional
  doc: "Output format: 0 - traditional, 1 - tabular [Integer]\ndefault = 0"
  type: boolean
  inputBinding:
    prefix: -D
- id: in_use_lower_case
  doc: "Use lower case filtering for the query sequence [T/F]  Optional\ndefault =\
    \ F"
  type: boolean
  inputBinding:
    prefix: -U
- id: in_input_sequences_f
  doc: "Input sequences in the form of accession.version [T/F]\ndefault = F"
  type: boolean
  inputBinding:
    prefix: -A
- id: in_force_use_legacy
  doc: "Force use of the legacy BLAST engine [T/F]  Optional\ndefault = F\n"
  type: boolean
  inputBinding:
    prefix: -V
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_alignment_output_file
  doc: "alignment output file [File Out]\ndefault = stdout"
  type: File
  outputBinding:
    glob: $(inputs.in_alignment_output_file)
- id: out_text_asn_output
  doc: Text ASN.1 output file [File Out]  Optional
  type: File
  outputBinding:
    glob: $(inputs.in_text_asn_output)
cwlVersion: v1.1
baseCommand:
- bl2seq
