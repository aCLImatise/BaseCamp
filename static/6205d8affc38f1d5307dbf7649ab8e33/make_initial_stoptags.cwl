class: CommandLineTool
id: make_initial_stoptags.py.cwl
inputs:
- id: graph_base
  doc: basename for input and output filenames
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
- id: subset_size
  doc: 'Set subset size (default 1e4 is prob ok) (default: 10000)'
  type: string
  inputBinding:
    prefix: --subset-size
- id: stop_tags
  doc: 'Use stoptags in this file during partitioning (default: )'
  type: File
  inputBinding:
    prefix: --stoptags
- id: force
  doc: 'Overwrite output file if it exists (default: False)'
  type: boolean
  inputBinding:
    prefix: --force
outputs: []
cwlVersion: v1.1
baseCommand:
- make-initial-stoptags.py
