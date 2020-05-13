class: CommandLineTool
id: spades_kmer_estimating.cwl
inputs:
- id: km_er
  doc: K-mer length
  type: string
  inputBinding:
    prefix: --kmer
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
outputs: []
cwlVersion: v1.1
baseCommand:
- spades-kmer-estimating
