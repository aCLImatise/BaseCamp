class: CommandLineTool
id: filter_abund_single.py.cwl
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
- id: in_cut_off
  doc: 'Trim at k-mers below this abundance. (default: 2)'
  type: long?
  inputBinding:
    prefix: --cutoff
- id: in_variable_coverage
  doc: "Only trim low-abundance k-mers from sequences that\nhave high coverage. (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --variable-coverage
- id: in_normalize_to
  doc: "Base the variable-coverage cutoff on this median k-mer\nabundance. (default:\
    \ 20)"
  type: long?
  inputBinding:
    prefix: --normalize-to
- id: in_save_graph
  doc: "If present, the name of the file to save the k-mer\ncountgraph to (default:\
    \ )"
  type: File?
  inputBinding:
    prefix: --savegraph
- id: in_outfile
  doc: "Override default output filename and output trimmed\nsequences into a file\
    \ with the given filename.\n(default: None)"
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_force
  doc: 'Overwrite output file if it exists (default: False)'
  type: File?
  inputBinding:
    prefix: --force
- id: in_quiet
  doc: 'Compress output using gzip (default: False)'
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_bzip
  doc: 'Compress output using bzip2 (default: False)'
  type: boolean?
  inputBinding:
    prefix: --bzip
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: "Override default output filename and output trimmed\nsequences into a file\
    \ with the given filename.\n(default: None)"
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
- id: out_force
  doc: 'Overwrite output file if it exists (default: False)'
  type: File?
  outputBinding:
    glob: $(inputs.in_force)
hints: []
cwlVersion: v1.1
baseCommand:
- filter-abund-single.py
