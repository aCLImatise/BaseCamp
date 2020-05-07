class: CommandLineTool
id: sga_kmer_count.cwl
inputs:
- id: km_er_size
  doc: 'The length of the kmer to use. (default: 27)'
  type: string
  inputBinding:
    prefix: --kmer-size
- id: sample_rate
  doc: 'use occurrence array sample rate of N in the FM-index. Higher values use significantly
    less memory at the cost of higher runtime. This value must be a power of 2 (default:
    128)'
  type: string
  inputBinding:
    prefix: --sample-rate
- id: cache_length
  doc: 'Cache Length for bwt lookups (default: 10)'
  type: string
  inputBinding:
    prefix: --cache-length
outputs: []
cwlVersion: v1.1
baseCommand:
- sga
- kmer-count
