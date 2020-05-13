class: CommandLineTool
id: load_graph.py.cwl
inputs:
- id: output_node_graph_filename
  doc: output k-mer nodegraph filename.
  type: string
  inputBinding:
    position: 0
- id: input_sequence_filename
  doc: input FAST[AQ] sequence filename
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
- id: no_build_tagset
  doc: 'Do NOT construct tagset while loading sequences (default: False)'
  type: boolean
  inputBinding:
    prefix: --no-build-tagset
- id: force
  doc: 'Overwrite output file if it exists (default: False)'
  type: boolean
  inputBinding:
    prefix: --force
outputs: []
cwlVersion: v1.1
baseCommand:
- load-graph.py
