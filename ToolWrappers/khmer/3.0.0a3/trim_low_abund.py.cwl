class: CommandLineTool
id: trim_low_abund.py.cwl
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
  doc: 'remove k-mers below this abundance (default: 2)'
  type: long?
  inputBinding:
    prefix: --cutoff
- id: in_trim_at_coverage
  doc: "trim reads when entire read above this coverage\n(default: 20)"
  type: long?
  inputBinding:
    prefix: --trim-at-coverage
- id: in_output
  doc: "only output a single file with the specified filename;\nuse a single dash\
    \ \"-\" to specify that output should go\nto STDOUT (the terminal) (default: None)"
  type: File?
  inputBinding:
    prefix: --output
- id: in_variable_coverage
  doc: "Only trim low-abundance k-mers from sequences that\nhave high coverage. (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --variable-coverage
- id: in_load_graph
  doc: "load a precomputed k-mer graph from disk (default:\nNone)"
  type: File?
  inputBinding:
    prefix: --loadgraph
- id: in_save_graph
  doc: "save the k-mer countgraph to disk after allreads are\nloaded. (default: )"
  type: File?
  inputBinding:
    prefix: --savegraph
- id: in_summary_info
  doc: "What format should the machine readable run summary be\nin? (`json` or `tsv`,\
    \ disabled by default) (default:\nNone)"
  type: string?
  inputBinding:
    prefix: --summary-info
- id: in_ignore_pairs
  doc: "treat all reads as if they were singletons (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --ignore-pairs
- id: in_tempdir
  doc: "Set location of temporary directory for second pass\n(default: ./)"
  type: Directory?
  inputBinding:
    prefix: --tempdir
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
- id: in_digi_norm
  doc: "Eliminate high-coverage reads altogether (digital\nnormalization). (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --diginorm
- id: in_digi_norm_coverage
  doc: 'Coverage threshold for --diginorm (default: 20)'
  type: long?
  inputBinding:
    prefix: --diginorm-coverage
- id: in_single_pass
  doc: "Do not do a second pass across the low coverage data\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --single-pass
- id: in_input_filenames
  doc: 'optional arguments:'
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
- trim-low-abund.py
