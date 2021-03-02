class: CommandLineTool
id: fu_grep.cwl
inputs:
- id: in_annotate
  doc: Add comments to the sequence when match is found
  type: boolean?
  inputBinding:
    prefix: --annotate
- id: in_name
  doc: 'Search pattern in sequence name (default: sequence)'
  type: boolean?
  inputBinding:
    prefix: --name
- id: in_comments
  doc: 'Search pattern in sequence comments (default: sequence)'
  type: boolean?
  inputBinding:
    prefix: --comments
- id: in_stranded
  doc: Do not search reverse complemented oligo
  type: boolean?
  inputBinding:
    prefix: --stranded
- id: in_fast_a
  doc: Force output in FASTA format
  type: boolean?
  inputBinding:
    prefix: --fasta
- id: in_dna_string
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_pattern
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_example
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input_file_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_test_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_test_two_dot_fa
  doc: ''
  type: long
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fu-grep
