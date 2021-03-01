class: CommandLineTool
id: abundance_dist_single.py.cwl
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
- id: in_small_count
  doc: "Reduce memory usage by using a smaller counter for\nindividual kmers. (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --small-count
- id: in_threads
  doc: 'Number of simultaneous threads to execute (default: 1)'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_no_zero
  doc: 'Do not output zero-count bins (default: True)'
  type: boolean?
  inputBinding:
    prefix: --no-zero
- id: in_no_big_count
  doc: 'Do not count k-mers past 255 (default: True)'
  type: boolean?
  inputBinding:
    prefix: --no-bigcount
- id: in_squash
  doc: 'Overwrite output file if it exists (default: False)'
  type: File?
  inputBinding:
    prefix: --squash
- id: in_save_graph
  doc: "Save the k-mer countgraph to the specified filename.\n(default: None)"
  type: File?
  inputBinding:
    prefix: --savegraph
- id: in_force
  doc: 'Override sanity checks (default: False)'
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_output_histogram_filename
  doc: "The name of the output histogram file. The columns\nare: (1) k-mer abundance,\
    \ (2) k-mer count, (3)\ncumulative count, (4) fraction of total distinct\nk-mers."
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_squash
  doc: 'Overwrite output file if it exists (default: False)'
  type: File?
  outputBinding:
    glob: $(inputs.in_squash)
hints: []
cwlVersion: v1.1
baseCommand:
- abundance-dist-single.py
