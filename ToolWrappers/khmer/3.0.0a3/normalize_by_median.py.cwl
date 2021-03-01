class: CommandLineTool
id: normalize_by_median.py.cwl
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
- id: in_cut_off
  doc: "when the median k-mer coverage level is above this\nnumber the read is not\
    \ kept. (default: 20)"
  type: long?
  inputBinding:
    prefix: --cutoff
- id: in_paired
  doc: "require that all sequences be properly paired\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --paired
- id: in_force_single
  doc: "treat all sequences as single-ended/unpaired (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --force_single
- id: in_unpaired_reads
  doc: "include a file of unpaired reads to which -p/--paired\ndoes not apply. (default:\
    \ None)"
  type: File?
  inputBinding:
    prefix: --unpaired-reads
- id: in_save_graph
  doc: "save the k-mer countgraph to disk after all reads are\nloaded. (default: None)"
  type: File?
  inputBinding:
    prefix: --savegraph
- id: in_report
  doc: "write progress report to report_filename (default:\nNone)"
  type: File?
  inputBinding:
    prefix: --report
- id: in_report_frequency
  doc: "report progress every report_frequency reads (default:\n100000)"
  type: long?
  inputBinding:
    prefix: --report-frequency
- id: in_force
  doc: 'continue past file reading errors (default: False)'
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_output
  doc: "only output a single file with the specified filename;\nuse a single dash\
    \ \"-\" to specify that output should go\nto STDOUT (the terminal) (default: None)"
  type: File?
  inputBinding:
    prefix: --output
- id: in_load_graph
  doc: "load a precomputed k-mer graph from disk (default:\nNone)"
  type: File?
  inputBinding:
    prefix: --loadgraph
- id: in_gzip
  doc: 'Compress output using gzip (default: False)'
  type: boolean?
  inputBinding:
    prefix: --gzip
- id: in_bzip
  doc: 'Compress output using bzip2 (default: False)'
  type: boolean?
  inputBinding:
    prefix: --bzip
- id: in_input_sequence_filename
  doc: Input FAST[AQ] sequence filename.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "only output a single file with the specified filename;\nuse a single dash\
    \ \"-\" to specify that output should go\nto STDOUT (the terminal) (default: None)"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- normalize-by-median.py
