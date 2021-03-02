class: CommandLineTool
id: impala.cwl
inputs:
- id: in_database_default_
  doc: "Database [String]\ndefault = nr"
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_query_file_default
  doc: "Query File [File In]\ndefault = stdin"
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_expectation_value_e
  doc: "Expectation value (E) [Real]\ndefault = 10.0"
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_alignment_view_options
  doc: "alignment view options: 0 = pairwise, 1 = master-slave showing identities,\
    \ 2 = master-slave no identities, 3 = flat master-slave, show identities, 4 =\
    \ flat master-slave, no identities, 5 = master-slave no identities and blunt ends,\
    \ 6 = flat master-slave, no identities and blunt ends [Integer]\ndefault = 0"
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_output_file_stdout
  doc: "Output File for Alignment [File Out]  Optional\ndefault = stdout"
  type: File?
  inputBinding:
    prefix: -o
- id: in_filter_query_sequence
  doc: "Filter query sequence with SEG [String]\ndefault = F"
  type: boolean?
  inputBinding:
    prefix: -F
- id: in_cost_open_default
  doc: "Cost to open a gap [Integer]\ndefault = 11"
  type: boolean?
  inputBinding:
    prefix: -G
- id: in_cost_extend_default
  doc: "Cost to extend a gap [Integer]\ndefault = 1"
  type: boolean?
  inputBinding:
    prefix: -E
- id: in_dropoff_x_attempted
  doc: "Dropoff (X) for attempted computation of alignments from endpoints [Real]\n\
    default = 7.0"
  type: boolean?
  inputBinding:
    prefix: -y
- id: in_number_use_default
  doc: "Number of processors to use [Integer]\ndefault = 1"
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_show_gis_deflines
  doc: "Show GI's in deflines [T/F]\ndefault = F"
  type: boolean?
  inputBinding:
    prefix: -I
- id: in_constant_pseudocounts_multipass
  doc: "Constant in pseudocounts for multipass version [Integer]\ndefault = 10"
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_maximum_number_passes
  doc: "Maximum number of passes to use in  multipass version [Integer]\ndefault =\
    \ 1"
  type: boolean?
  inputBinding:
    prefix: -j
- id: in_believe_defline_default
  doc: "Believe the query defline [T/F]\ndefault = F"
  type: boolean?
  inputBinding:
    prefix: -J
- id: in_seqalign_file_be
  doc: SeqAlign file ('Believe the query defline' must be TRUE) [File Out]  Optional
  type: File?
  inputBinding:
    prefix: -O
- id: in_matrix_default_blosum
  doc: "Matrix [String]\ndefault = BLOSUM62"
  type: boolean?
  inputBinding:
    prefix: -M
- id: in_database_name_matrix
  doc: "Database name for matrix profiles [File In]\ndefault = stdin"
  type: boolean?
  inputBinding:
    prefix: -P
- id: in_effective_length_database
  doc: "Effective length of the database (default is 0 for actual size, use -1 for\
    \ size computed in makemat) [Integer]\ndefault = 0"
  type: boolean?
  inputBinding:
    prefix: -z
- id: in_print_help_overrides
  doc: "Print help; overrides all other arguments [T/F]\ndefault = F"
  type: boolean?
  inputBinding:
    prefix: -H
- id: in_number_print_default
  doc: "Number of one-line descriptions to print [Integer]\ndefault = 250"
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_number_show_default
  doc: "Number of alignments to show  [Integer]\ndefault = 250\n"
  type: boolean?
  inputBinding:
    prefix: -b
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_stdout
  doc: "Output File for Alignment [File Out]  Optional\ndefault = stdout"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_stdout)
- id: out_seqalign_file_be
  doc: SeqAlign file ('Believe the query defline' must be TRUE) [File Out]  Optional
  type: File?
  outputBinding:
    glob: $(inputs.in_seqalign_file_be)
hints: []
cwlVersion: v1.1
baseCommand:
- impala
