class: CommandLineTool
id: sga_kmer_count.cwl
inputs:
- id: in_km_er_size
  doc: 'The length of the kmer to use. (default: 27)'
  type: long?
  inputBinding:
    prefix: --kmer-size
- id: in_sample_rate
  doc: "use occurrence array sample rate of N in the FM-index. Higher values use significantly\n\
    less memory at the cost of higher runtime. This value must be a power of 2 (default:\
    \ 128)"
  type: long?
  inputBinding:
    prefix: --sample-rate
- id: in_cache_length
  doc: 'Cache Length for bwt lookups (default: 10)'
  type: long?
  inputBinding:
    prefix: --cache-length
- id: in_src_dot
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- sga
- kmer-count
