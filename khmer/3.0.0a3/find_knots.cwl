class: CommandLineTool
id: find_knots.py.cwl
inputs:
- id: graph_base
  doc: Basename for the input and output files.
  type: string
  inputBinding:
    position: 0
- id: info
  doc: print citation information
  type: boolean
  inputBinding:
    prefix: --info
- id: k_size
  doc: 'k-mer size to use (default: 32)'
  type: string
  inputBinding:
    prefix: --ksize
- id: unique_km_ers
  doc: 'approximate number of unique kmers in the input set (default: 0)'
  type: string
  inputBinding:
    prefix: --unique-kmers
- id: fp_rate
  doc: 'Override the automatic FP rate setting for the current script (default: None)'
  type: string
  inputBinding:
    prefix: --fp-rate
- id: max_memory_usage
  doc: 'maximum amount of memory to use for data structure (default: None)'
  type: long
  inputBinding:
    prefix: --max-memory-usage
- id: small_count
  doc: 'Reduce memory usage by using a smaller counter for individual kmers. (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --small-count
- id: force
  doc: 'Continue past warnings (default: False)'
  type: boolean
  inputBinding:
    prefix: --force
outputs: []
cwlVersion: v1.1
baseCommand:
- find-knots.py
