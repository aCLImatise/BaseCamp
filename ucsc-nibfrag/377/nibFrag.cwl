class: CommandLineTool
id: nibFrag.cwl
inputs:
- id: file_nib
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: start
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: end
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: strand
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: out_fa
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: masked
  doc: Use lower-case characters for bases meant to be masked out.
  type: boolean
  inputBinding:
    prefix: -masked
- id: hard_masked
  doc: Use upper-case for not masked-out, and 'N' characters for masked-out bases.
  type: boolean
  inputBinding:
    prefix: -hardMasked
- id: upper
  doc: Use upper-case characters for all bases.
  type: boolean
  inputBinding:
    prefix: -upper
- id: name
  doc: Use given name after '>' in output sequence.
  type: string
  inputBinding:
    prefix: -name
- id: db_header
  doc: Add full database info to the header, with or without -name option.
  type: string
  inputBinding:
    prefix: -dbHeader
- id: tba_header
  doc: Format header for compatibility with tba, takes database name as argument.
  type: string
  inputBinding:
    prefix: -tbaHeader
outputs: []
cwlVersion: v1.1
baseCommand:
- nibFrag
