class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/gmer_counter.cwl
inputs:
- id: db
  doc: '- SNP/KMER database file'
  type: string
  inputBinding:
    prefix: -db
- id: dbb
  doc: '- binary database file'
  type: string
  inputBinding:
    prefix: -dbb
- id: write_binary_database
  doc: '- write binary database to file'
  type: File
  inputBinding:
    prefix: -w
- id: max_km_ers
  doc: '- maximum number of kmers per node'
  type: string
  inputBinding:
    prefix: --max_kmers
- id: header
  doc: '- print header row'
  type: boolean
  inputBinding:
    prefix: --header
- id: total
  doc: '- print the total number of kmers per node'
  type: boolean
  inputBinding:
    prefix: --total
- id: unique
  doc: '- print the number of nonzero kmers per node'
  type: boolean
  inputBinding:
    prefix: --unique
- id: km_ers
  doc: '- print individual kmer counts (default if no other output)'
  type: boolean
  inputBinding:
    prefix: --kmers
- id: distribution
  doc: '- print kmer distribution (up to given number)'
  type: string
  inputBinding:
    prefix: --distribution
- id: increase_debug_level
  doc: '- increase debug level'
  type: boolean
  inputBinding:
    prefix: -D
- id: arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: sequences_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- gmer_counter
