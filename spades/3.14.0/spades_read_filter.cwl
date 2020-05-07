class: CommandLineTool
id: spades_read_filter.cwl
inputs:
- id: km_er
  doc: K-mer length
  type: string
  inputBinding:
    prefix: --kmer
- id: cov
  doc: Median kmer count threshold (read pairs, s.t. kmer count median for BOTH reads
    LESS OR EQUAL to this value will be ignored)
  type: string
  inputBinding:
    prefix: --cov
- id: dataset
  doc: Dataset description (in YAML)
  type: string
  inputBinding:
    prefix: --dataset
- id: threads
  doc: '# of threads to use'
  type: string
  inputBinding:
    prefix: --threads
- id: outdir
  doc: Output directory to use
  type: string
  inputBinding:
    prefix: --outdir
outputs: []
cwlVersion: v1.1
baseCommand:
- spades-read-filter
