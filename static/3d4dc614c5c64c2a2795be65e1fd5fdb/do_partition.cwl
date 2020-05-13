class: CommandLineTool
id: do_partition.py.cwl
inputs:
- id: graph_base
  doc: base name for output files
  type: string
  inputBinding:
    position: 0
- id: input_sequence_filename
  doc: input FAST[AQ] sequence filenames
  type: string
  inputBinding:
    position: 1
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
- id: threads
  doc: 'Number of simultaneous threads to execute (default: 1)'
  type: string
  inputBinding:
    prefix: --threads
- id: subset_size
  doc: 'Set subset size (usually 1e5-1e6 is good) (default: 100000)'
  type: string
  inputBinding:
    prefix: --subset-size
- id: no_big_traverse
  doc: 'Truncate graph joins at big traversals (default: False)'
  type: boolean
  inputBinding:
    prefix: --no-big-traverse
- id: keep_subsets
  doc: 'Keep individual subsets (default: False)'
  type: boolean
  inputBinding:
    prefix: --keep-subsets
- id: force
  doc: 'Overwrite output file if it exists (default: False)'
  type: boolean
  inputBinding:
    prefix: --force
outputs: []
cwlVersion: v1.1
baseCommand:
- do-partition.py
