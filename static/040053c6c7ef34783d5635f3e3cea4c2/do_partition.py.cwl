class: CommandLineTool
id: do_partition.py.cwl
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
- id: in_subset_size
  doc: "Set subset size (usually 1e5-1e6 is good) (default:\n100000)"
  type: long?
  inputBinding:
    prefix: --subset-size
- id: in_no_big_traverse
  doc: "Truncate graph joins at big traversals (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --no-big-traverse
- id: in_keep_subsets
  doc: 'Keep individual subsets (default: False)'
  type: boolean?
  inputBinding:
    prefix: --keep-subsets
- id: in_force
  doc: 'Overwrite output file if it exists (default: False)'
  type: File?
  inputBinding:
    prefix: --force
- id: in_graph_base
  doc: base name for output files
  type: string
  inputBinding:
    position: 0
- id: in_input_sequence_filename
  doc: input FAST[AQ] sequence filenames
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
- do-partition.py
