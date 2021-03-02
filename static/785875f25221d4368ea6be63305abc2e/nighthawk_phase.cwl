class: CommandLineTool
id: nighthawk_phase.cwl
inputs:
- id: in_alias
  doc: "The read names (column 1&2) in the M4 file are\nzero based numerical indices,\
    \ not read names."
  type: boolean?
  inputBinding:
    prefix: --alias
- id: in_bubble_path_filter
  doc: "FLOAT  Read membership in a bubble path, D =\n(N_readKmers / N_pathKmers ).\
    \ Reads greater than\nD will be kept [0.9]"
  type: boolean?
  inputBinding:
    prefix: --bubble-path-filter
- id: in_filter
  doc: "INT    Remove kmers with fewer than N reads covering it\n[3]"
  type: boolean?
  inputBinding:
    prefix: --filter
- id: in_km_er_size
  doc: "INT    Kmer size N, not to exceed 32, length must be\nodd [29]"
  type: boolean?
  inputBinding:
    prefix: --kmer-size
- id: in_no_in_del
  doc: Only use bubbles with equal path sizes
  type: boolean?
  inputBinding:
    prefix: --no-indel
- id: in_no_hpc
  doc: Turn off homopolymer compression
  type: boolean?
  inputBinding:
    prefix: --no-hpc
- id: in_min_path_coverage
  doc: "INT    Bubble paths with fewer than N reads on either\nbranch will be filtered\
    \ [2]"
  type: boolean?
  inputBinding:
    prefix: --min-path-coverage
- id: in_max_bubble_length
  doc: INT    Maximum length of a bubble path [100]
  type: boolean?
  inputBinding:
    prefix: --max-bubble-length
- id: in_max_pile_size
  doc: "INT    Skip phasing for piles with more than\nmax-pile-size [1000]"
  type: boolean?
  inputBinding:
    prefix: --max-pile-size
- id: in_num_threads
  doc: "INT    Number of threads to use, 0 means autodetection.\n[0]"
  type: boolean?
  inputBinding:
    prefix: --num-threads
- id: in_log_level
  doc: "STR    Set log level. Valid choices: (TRACE, DEBUG,\nINFO, WARN, FATAL). [WARN]"
  type: boolean?
  inputBinding:
    prefix: --log-level
- id: in_log_file
  doc: FILE   Log to a file, instead of stderr.
  type: boolean?
  inputBinding:
    prefix: --log-file
- id: in_input_db
  doc: STR    Input seqDB, see pancake
  type: string
  inputBinding:
    position: 0
- id: in_input_m_four
  doc: STR    Input M4 overlaps
  type: long
  inputBinding:
    position: 1
- id: in_scraps
  doc: STR    Filtered m4 records
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- nighthawk
- phase
