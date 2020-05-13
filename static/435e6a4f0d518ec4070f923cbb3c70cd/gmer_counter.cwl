class: CommandLineTool
id: gmer_counter.cwl
inputs:
- id: arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: sequences
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: max_km_ers
  doc: of kmers per node
  type: string
  inputBinding:
    prefix: --max_kmers
- id: silent
  doc: '- do not output kmer counts (useful if only compiling db or index is needed'
  type: boolean
  inputBinding:
    prefix: --silent
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
- id: compile_index
  doc: index to database and write it to file
  type: File
  inputBinding:
    prefix: --compile_index
- id: distribution
  doc: distribution (up to given number)
  type: string
  inputBinding:
    prefix: --distribution
- id: num_threads
  doc: '- number of worker threads (default 24)'
  type: boolean
  inputBinding:
    prefix: --num_threads
- id: prefetch
  doc: '- prefetch memory mapped files (faster on high-memory systems)'
  type: boolean
  inputBinding:
    prefix: --prefetch
- id: d
  doc: '- increase debug level'
  type: boolean
  inputBinding:
    prefix: -D
outputs: []
cwlVersion: v1.1
baseCommand:
- gmer_counter
