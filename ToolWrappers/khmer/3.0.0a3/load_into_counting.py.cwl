class: CommandLineTool
id: load_into_counting.py.cwl
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
- id: in_no_big_count
  doc: "The default behaviour is to count past 255 using\nbigcount. This flag turns\
    \ bigcount off, limiting\ncounts to 255. (default: True)"
  type: boolean?
  inputBinding:
    prefix: --no-bigcount
- id: in_summary_info
  doc: "What format should the machine readable run summary be\nin? (`json` or `tsv`,\
    \ disabled by default) (default:\nNone)"
  type: string?
  inputBinding:
    prefix: --summary-info
- id: in_force
  doc: 'Overwrite output file if it exists (default: False)'
  type: File?
  inputBinding:
    prefix: --force
- id: in_output_count_graph_filename
  doc: The name of the file to write the k-mer countgraph to.
  type: string
  inputBinding:
    position: 0
- id: in_input_sequence_filename
  doc: The names of one or more FAST[AQ] input sequence
  type: string
  inputBinding:
    position: 1
- id: in_files_dot
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 2
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
- load-into-counting.py
