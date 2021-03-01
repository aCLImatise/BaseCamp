class: CommandLineTool
id: bioformats_flanknfilter.cwl
inputs:
- id: in_type
  doc: 'the input file type (default: bed)'
  type: string?
  inputBinding:
    prefix: --type
- id: in_length
  doc: 'the flanking region length (default: 100)'
  type: long?
  inputBinding:
    prefix: --length
- id: in_strict
  doc: "require flanks to have exactly the specified length\n(it may be shorter if\
    \ a feature is located near a\nsequence start or end) (default: False)\n"
  type: boolean?
  inputBinding:
    prefix: --strict
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_input_file
  doc: an input file of features to be filtered
  type: string
  inputBinding:
    position: 0
- id: in_fast_a_file
  doc: a FASTA file of sequences the features are related to
  type: string
  inputBinding:
    position: 1
- id: in_output_file
  doc: an output file of filtered features
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bioformats
- flanknfilter
