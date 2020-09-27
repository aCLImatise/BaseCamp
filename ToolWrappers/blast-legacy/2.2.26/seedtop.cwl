class: CommandLineTool
id: seedtop.cwl
inputs:
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
- id: in_hit_file_default
  doc: "Hit File [File In]\ndefault = hit_file"
  type: boolean
  inputBinding:
    prefix: -k
- id: in_output_file_alignment
  doc: "Output File for Alignment [File Out]  Optional\ndefault = stdout"
  type: File
  inputBinding:
    prefix: -o
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
- id: in_cost_decline_align
  doc: "Cost decline to align [Integer]\ndefault = 99999"
  type: boolean
  inputBinding:
    prefix: -D
- id: in_x_dropoff_value
  doc: "X dropoff value for gapped alignment (in bits) [Integer]\ndefault = 15"
  type: boolean
  inputBinding:
    prefix: -X
- id: in_cutoff_cost_default
  doc: "Cutoff cost [Integer]\ndefault = 30"
  type: boolean
  inputBinding:
    prefix: -S
- id: in_score_only_default
  doc: "Score only or not [Integer]\ndefault = 1"
  type: boolean
  inputBinding:
    prefix: -C
- id: in_show_gis_f
  doc: "Show GI's in deflines [T/F]\ndefault = F"
  type: boolean
  inputBinding:
    prefix: -I
- id: in_expectation_valuee_default
  doc: "Expectation value(E) [Real]\ndefault = 10.0"
  type: boolean
  inputBinding:
    prefix: -e
- id: in_believe_query_default
  doc: "Believe the query defline [T/F]\ndefault = F"
  type: boolean
  inputBinding:
    prefix: -J
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
- id: in_program_name_default
  doc: "Program Name [String]\ndefault = patmatchp"
  type: boolean
  inputBinding:
    prefix: -p
- id: in_cost_match_default
  doc: "Cost for a match [Integer]\ndefault = 10"
  type: boolean
  inputBinding:
    prefix: -r
- id: in_cost_mismatch_default
  doc: "Cost for a mismatch [Integer]\ndefault = -10"
  type: boolean
  inputBinding:
    prefix: -q
- id: in_filter_query_sequence
  doc: "Filter query sequence with SEG [T/F]\ndefault = F"
  type: boolean
  inputBinding:
    prefix: -F
- id: in_force_searching_patterns
  doc: "Force searching for patterns even if they are too likely [T/F]\ndefault =\
    \ F"
  type: boolean
  inputBinding:
    prefix: -f
- id: in_internal_hit_buffer
  doc: "internal hit buffer size multiplier (default: 2 /query_length/ ) [Integer]\n\
    default = 2\n"
  type: boolean
  inputBinding:
    prefix: -K
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
cwlVersion: v1.1
baseCommand:
- seedtop
