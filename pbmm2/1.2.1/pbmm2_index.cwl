class: CommandLineTool
id: pbmm2_index.cwl
inputs:
- id: preset
  doc: 'STR   Set alignment mode. See below for preset parameter details. Valid choices:
    (SUBREAD, CCS, ISOSEQ, UNROLLED). [SUBREAD]'
  type: boolean
  inputBinding:
    prefix: --preset
- id: k
  doc: INT   k-mer size (no larger than 28). [-1]
  type: boolean
  inputBinding:
    prefix: -k
- id: w
  doc: INT   Minimizer window size. [-1]
  type: boolean
  inputBinding:
    prefix: -w
- id: no_km_er_compression
  doc: Disable homopolymer-compressed k-mer (compression is active for SUBREAD & UNROLLED
    presets).
  type: boolean
  inputBinding:
    prefix: --no-kmer-compression
- id: num_threads
  doc: INT   Number of threads to use, 0 means autodetection. [0]
  type: boolean
  inputBinding:
    prefix: --num-threads
- id: log_level
  doc: 'STR   Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]'
  type: boolean
  inputBinding:
    prefix: --log-level
- id: log_file
  doc: FILE  Log to a file, instead of stderr.
  type: boolean
  inputBinding:
    prefix: --log-file
outputs: []
cwlVersion: v1.1
baseCommand:
- pbmm2
- index
