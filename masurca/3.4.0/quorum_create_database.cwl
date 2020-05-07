class: CommandLineTool
id: quorum_create_database.cwl
inputs:
- id: size
  doc: '*Initial hash size'
  type: string
  inputBinding:
    prefix: --size
- id: mer
  doc: '*Mer length'
  type: string
  inputBinding:
    prefix: --mer
- id: bits
  doc: '*Bits for value field'
  type: string
  inputBinding:
    prefix: --bits
- id: min_qual_value
  doc: Min quality as an int
  type: string
  inputBinding:
    prefix: --min-qual-value
- id: min_qual_char
  doc: Min quality as a ASCII character
  type: string
  inputBinding:
    prefix: --min-qual-char
- id: threads
  doc: Number of threads (1)
  type: string
  inputBinding:
    prefix: --threads
- id: output
  doc: Output file (combined_database)
  type: File
  inputBinding:
    prefix: --output
- id: re_probe
  doc: Maximum number of reprobes (126)
  type: long
  inputBinding:
    prefix: --reprobe
outputs: []
cwlVersion: v1.1
baseCommand:
- quorum_create_database
