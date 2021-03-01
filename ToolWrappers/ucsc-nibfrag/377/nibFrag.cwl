class: CommandLineTool
id: nibFrag.cwl
inputs:
- id: in_masked
  doc: Use lower-case characters for bases meant to be masked out.
  type: boolean?
  inputBinding:
    prefix: -masked
- id: in_hard_masked
  doc: Use upper-case for not masked-out, and 'N' characters for masked-out bases.
  type: boolean?
  inputBinding:
    prefix: -hardMasked
- id: in_upper
  doc: Use upper-case characters for all bases.
  type: boolean?
  inputBinding:
    prefix: -upper
- id: in_name
  doc: Use given name after '>' in output sequence.
  type: string?
  inputBinding:
    prefix: -name
- id: in_db_header
  doc: Add full database info to the header, with or without -name option.
  type: string?
  inputBinding:
    prefix: -dbHeader
- id: in_tba_header
  doc: Format header for compatibility with tba, takes database name as argument.
  type: string?
  inputBinding:
    prefix: -tbaHeader
- id: in_file_dot_nib
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_start
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_end
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_strand
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- nibFrag
