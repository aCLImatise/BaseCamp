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
- id: use_bit_integeres
  doc: '- use 32-bit integeres for counts (default 16-bit)'
  type: boolean
  inputBinding:
    prefix: '-32'
- id: max_km_ers
  doc: '- maximum number of kmers per node'
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
  doc: '- Add read index to database and write it to file'
  type: File
  inputBinding:
    prefix: --compile_index
- id: distribution
  doc: '- print kmer distribution (up to given number)'
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
