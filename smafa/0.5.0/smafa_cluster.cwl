class: CommandLineTool
id: smafa_cluster.cwl
inputs:
- id: flags
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: fast_a
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: amino_acid
  doc: 'Sequences are amino acid [default: nucleotide]'
  type: boolean
  inputBinding:
    prefix: --amino-acid
- id: fragment_method
  doc: Use the 'fragment' method for clustering
  type: boolean
  inputBinding:
    prefix: --fragment-method
- id: quiet
  doc: Unless there is an error, do not print logging information
  type: boolean
  inputBinding:
    prefix: --quiet
- id: verbose
  doc: Print extra debug logging information
  type: boolean
  inputBinding:
    prefix: --verbose
- id: divergence
  doc: 'Maximum number of mismatches in reported hits [default: 5]'
  type: long
  inputBinding:
    prefix: --divergence
- id: km_er_length
  doc: Length of kmer to query with [default 5]
  type: long
  inputBinding:
    prefix: --kmer-length
outputs: []
cwlVersion: v1.1
baseCommand:
- smafa
- cluster
