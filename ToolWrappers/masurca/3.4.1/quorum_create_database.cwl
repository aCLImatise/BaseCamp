class: CommandLineTool
id: quorum_create_database.cwl
inputs:
- id: in_size
  doc: '*Initial hash size'
  type: long
  inputBinding:
    prefix: --size
- id: in_mer
  doc: '*Mer length'
  type: long
  inputBinding:
    prefix: --mer
- id: in_bits
  doc: '*Bits for value field'
  type: long
  inputBinding:
    prefix: --bits
- id: in_min_qual_value
  doc: Min quality as an int
  type: long
  inputBinding:
    prefix: --min-qual-value
- id: in_min_qual_char
  doc: Min quality as a ASCII character
  type: long
  inputBinding:
    prefix: --min-qual-char
- id: in_threads
  doc: Number of threads (1)
  type: long
  inputBinding:
    prefix: --threads
- id: in_output
  doc: Output file (combined_database)
  type: File
  inputBinding:
    prefix: --output
- id: in_re_probe
  doc: Maximum number of reprobes (126)
  type: long
  inputBinding:
    prefix: --reprobe
- id: in_create_database_cmdline
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_reads
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output file (combined_database)
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- quorum_create_database
