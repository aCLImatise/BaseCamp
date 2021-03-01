class: CommandLineTool
id: gmer_counter.cwl
inputs:
- id: in_db
  doc: '- SNP/KMER database file'
  type: File?
  inputBinding:
    prefix: -db
- id: in_dbb
  doc: '- binary database file'
  type: File?
  inputBinding:
    prefix: -dbb
- id: in_write_binary_database
  doc: '- write binary database to file'
  type: File?
  inputBinding:
    prefix: -w
- id: in_max_km_ers
  doc: '- maximum number of kmers per node'
  type: long?
  inputBinding:
    prefix: --max_kmers
- id: in_header
  doc: '- print header row'
  type: boolean?
  inputBinding:
    prefix: --header
- id: in_total
  doc: '- print the total number of kmers per node'
  type: boolean?
  inputBinding:
    prefix: --total
- id: in_unique
  doc: '- print the number of nonzero kmers per node'
  type: boolean?
  inputBinding:
    prefix: --unique
- id: in_km_ers
  doc: '- print individual kmer counts (default if no other output)'
  type: boolean?
  inputBinding:
    prefix: --kmers
- id: in_distribution
  doc: '- print kmer distribution (up to given number)'
  type: long?
  inputBinding:
    prefix: --distribution
- id: in_increase_debug_level
  doc: '- increase debug level'
  type: boolean?
  inputBinding:
    prefix: -D
- id: in_arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gmer_counter
