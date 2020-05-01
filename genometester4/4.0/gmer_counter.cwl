#!/usr/bin/env cwl-runner

baseCommand:
- gmer_counter
class: CommandLineTool
cwlVersion: v1.0
id: gmer_counter
inputs:
- doc: ''
  id: arguments
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: sequences
  inputBinding:
    position: 1
  type: string
- doc: of kmers per node
  id: max_km_ers
  inputBinding:
    prefix: --max_kmers
  type: string
- doc: '- do not output kmer counts (useful if only compiling db or index is needed'
  id: silent
  inputBinding:
    prefix: --silent
  type: boolean
- doc: '- print header row'
  id: header
  inputBinding:
    prefix: --header
  type: boolean
- doc: '- print the total number of kmers per node'
  id: total
  inputBinding:
    prefix: --total
  type: boolean
- doc: '- print the number of nonzero kmers per node'
  id: unique
  inputBinding:
    prefix: --unique
  type: boolean
- doc: '- print individual kmer counts (default if no other output)'
  id: km_ers
  inputBinding:
    prefix: --kmers
  type: boolean
- doc: index to database and write it to file
  id: compile_index
  inputBinding:
    prefix: --compile_index
  type: File
- doc: distribution (up to given number)
  id: distribution
  inputBinding:
    prefix: --distribution
  type: string
- doc: '- number of worker threads (default 24)'
  id: num_threads
  inputBinding:
    prefix: --num_threads
  type: boolean
- doc: '- prefetch memory mapped files (faster on high-memory systems)'
  id: prefetch
  inputBinding:
    prefix: --prefetch
  type: boolean
- doc: '- increase debug level'
  id: d
  inputBinding:
    prefix: -D
  type: boolean
