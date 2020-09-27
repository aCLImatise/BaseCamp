class: CommandLineTool
id: rpsblast.cwl
inputs:
- id: in_input_query_sequence
  doc: "Input query sequence (this parameter must be set) [File In]\ndefault = stdin"
  type: boolean
  inputBinding:
    prefix: -i
- id: in_rps_blast_database
  doc: RPS BLAST Database [File In]
  type: boolean
  inputBinding:
    prefix: -d
- id: in_query_sequence_protein
  doc: "Query sequence is protein  [T/F]  Optional\ndefault = T"
  type: boolean
  inputBinding:
    prefix: -p
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
- id: in_produce_html_output
  doc: "Produce HTML output [T/F]\ndefault = F"
  type: boolean
  inputBinding:
    prefix: -T
- id: in_logfile_name_optionaldefault
  doc: "Logfile name  [File Out]  Optional\ndefault = stderr"
  type: File
  inputBinding:
    prefix: -l
- id: in_use_case_filtering
  doc: "Use lower case filtering of FASTA sequence [T/F]  Optional\ndefault = F"
  type: boolean
  inputBinding:
    prefix: -U
- id: in_range_restriction_query
  doc: "Range restriction on query sequence (Format: start,stop) blastp only\n0 in\
    \ 'start' refers to the beginning of the sequence\n0 in 'stop' refers to the end\
    \ of the sequence [String]  Optional\ndefault = 0,0\n"
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
- id: out_logfile_name_optionaldefault
  doc: "Logfile name  [File Out]  Optional\ndefault = stderr"
  type: File
  outputBinding:
    glob: $(inputs.in_logfile_name_optionaldefault)
cwlVersion: v1.1
baseCommand:
- rpsblast
