class: CommandLineTool
id: pbmm2_index.cwl
inputs:
- id: in_preset
  doc: "STR   Set alignment mode. See below for preset parameter details. Valid choices:\
    \ (SUBREAD,\nCCS, ISOSEQ, UNROLLED). [SUBREAD]"
  type: boolean
  inputBinding:
    prefix: --preset
- id: in_int_size_no
  doc: INT   k-mer size (no larger than 28). [-1]
  type: boolean
  inputBinding:
    prefix: -k
- id: in_int_minimizer_window
  doc: INT   Minimizer window size. [-1]
  type: boolean
  inputBinding:
    prefix: -w
- id: in_no_km_er_compression
  doc: "Disable homopolymer-compressed k-mer (compression is active for SUBREAD &\
    \ UNROLLED\npresets)."
  type: boolean
  inputBinding:
    prefix: --no-kmer-compression
- id: in_num_threads
  doc: INT   Number of threads to use, 0 means autodetection. [0]
  type: boolean
  inputBinding:
    prefix: --num-threads
- id: in_log_level
  doc: 'STR   Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]'
  type: boolean
  inputBinding:
    prefix: --log-level
- id: in_log_file
  doc: FILE  Log to a file, instead of stderr.
  type: boolean
  inputBinding:
    prefix: --log-file
- id: in_out_dot_mmi
  doc: STR   Output Reference Index
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pbmm2
- index
