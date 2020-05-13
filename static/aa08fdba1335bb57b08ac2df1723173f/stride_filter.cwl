class: CommandLineTool
id: stride_filter.cwl
inputs:
- id: verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: prefix
  doc: 'use PREFIX for the names of the index files (default: prefix of the input
    file)'
  type: string
  inputBinding:
    prefix: --prefix
- id: outfile
  doc: 'write the qc-passed reads to FILE (default: READSFILE.filter.pass.fa)'
  type: File
  inputBinding:
    prefix: --outfile
- id: threads
  doc: 'use NUM threads to compute the overlaps (default: 1)'
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
- id: no_duplicate_check
  doc: turn off duplicate removal
  type: boolean
  inputBinding:
    prefix: --no-duplicate-check
- id: substring_only
  doc: when removing duplicates, only remove substring sequences, not full-length
    matches
  type: boolean
  inputBinding:
    prefix: --substring-only
- id: no_km_er_check
  doc: turn off the kmer check
  type: boolean
  inputBinding:
    prefix: --no-kmer-check
- id: homopolymer_check
  doc: check reads for hompolymer run length sequencing errors
  type: boolean
  inputBinding:
    prefix: --homopolymer-check
- id: low_complexity_check
  doc: filter out low complexity reads
  type: boolean
  inputBinding:
    prefix: --low-complexity-check
- id: km_er_size
  doc: 'The length of the kmer to use. (default: 31)'
  type: string
  inputBinding:
    prefix: --kmer-size
- id: km_er_threshold
  doc: 'Require at least N kmer coverage for each kmer in a read. (default: 3)'
  type: string
  inputBinding:
    prefix: --kmer-threshold
outputs: []
cwlVersion: v1.1
baseCommand:
- stride
- filter
