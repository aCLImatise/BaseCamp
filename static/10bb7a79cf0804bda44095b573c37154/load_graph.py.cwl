class: CommandLineTool
id: load_graph.py.cwl
inputs:
- id: in_info
  doc: print citation information
  type: boolean?
  inputBinding:
    prefix: --info
- id: in_k_size
  doc: 'k-mer size to use (default: 32)'
  type: long?
  inputBinding:
    prefix: --ksize
- id: in_unique_km_ers
  doc: "approximate number of unique kmers in the input set\n(default: 0)"
  type: long?
  inputBinding:
    prefix: --unique-kmers
- id: in_fp_rate
  doc: "Override the automatic FP rate setting for the current\nscript (default: None)"
  type: string?
  inputBinding:
    prefix: --fp-rate
- id: in_max_memory_usage
  doc: "maximum amount of memory to use for data structure\n(default: None)"
  type: long?
  inputBinding:
    prefix: --max-memory-usage
- id: in_threads
  doc: 'Number of simultaneous threads to execute (default: 1)'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_no_build_tagset
  doc: "Do NOT construct tagset while loading sequences\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --no-build-tagset
- id: in_force
  doc: 'Overwrite output file if it exists (default: False)'
  type: File?
  inputBinding:
    prefix: --force
- id: in_output_node_graph_filename
  doc: output k-mer nodegraph filename.
  type: string
  inputBinding:
    position: 0
- id: in_input_sequence_filename
  doc: input FAST[AQ] sequence filename
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_force
  doc: 'Overwrite output file if it exists (default: False)'
  type: File?
  outputBinding:
    glob: $(inputs.in_force)
hints: []
cwlVersion: v1.1
baseCommand:
- load-graph.py
