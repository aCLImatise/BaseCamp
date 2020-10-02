class: CommandLineTool
id: sga_gapfill.cwl
inputs:
- id: in_verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_prefix
  doc: load the FM-index with prefix NAME
  type: string
  inputBinding:
    prefix: --prefix
- id: in_start_km_er
  doc: 'First kmer size used to attempt to resolve each gap (default: 91)'
  type: long
  inputBinding:
    prefix: --start-kmer
- id: in_end_km_er
  doc: 'Last kmer size used to attempt to resolve each gap (default: 51)'
  type: long
  inputBinding:
    prefix: --end-kmer
- id: in_km_er_threshold
  doc: only use kmers seen at least T times
  type: string
  inputBinding:
    prefix: --kmer-threshold
- id: in_threads
  doc: use NUM computation threads
  type: long
  inputBinding:
    prefix: --threads
- id: in_sample_rate
  doc: "use occurrence array sample rate of N in the FM-index. Higher values use significantly\n\
    less memory at the cost of higher runtime. This value must be a power of 2 (default:\
    \ 128)"
  type: long
  inputBinding:
    prefix: --sample-rate
- id: in_scaffolds_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sga
- gapfill
