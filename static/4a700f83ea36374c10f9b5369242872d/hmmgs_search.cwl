class: CommandLineTool
id: ../../../hmmgs_search.cwl
inputs:
- id: u
  doc: ''
  type: boolean
  inputBinding:
    prefix: -u
- id: p
  doc: ''
  type: string
  inputBinding:
    prefix: -p
- id: km_ers
  doc: starting kmers (can use KmerFilter's fast_kmer_filter to identify starting
    kmers)
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- hmmgs
- search
