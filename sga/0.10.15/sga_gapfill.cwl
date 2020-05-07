class: CommandLineTool
id: sga_gapfill.cwl
inputs:
- id: option
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: scaffolds_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: prefix
  doc: load the FM-index with prefix NAME
  type: string
  inputBinding:
    prefix: --prefix
- id: start_km_er
  doc: 'First kmer size used to attempt to resolve each gap (default: 91)'
  type: string
  inputBinding:
    prefix: --start-kmer
- id: end_km_er
  doc: 'Last kmer size used to attempt to resolve each gap (default: 51)'
  type: string
  inputBinding:
    prefix: --end-kmer
- id: km_er_threshold
  doc: only use kmers seen at least T times
  type: string
  inputBinding:
    prefix: --kmer-threshold
- id: threads
  doc: use NUM computation threads
  type: string
  inputBinding:
    prefix: --threads
- id: sample_rate
  doc: 'use occurrence array sample rate of N in the FM-index. Higher values use significantly
    less memory at the cost of higher runtime. This value must be a power of 2 (default:
    128)'
  type: string
  inputBinding:
    prefix: --sample-rate
outputs: []
cwlVersion: v1.1
baseCommand:
- sga
- gapfill
