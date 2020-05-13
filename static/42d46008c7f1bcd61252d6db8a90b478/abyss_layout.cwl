class: CommandLineTool
id: abyss_layout.cwl
inputs:
- id: overlap
  doc: the sequence overlap graph
  type: string
  inputBinding:
    position: 0
- id: min_length
  doc: minimum sequence length [0]
  type: string
  inputBinding:
    prefix: --min-length
- id: min_overlap
  doc: minimum overlap [0]
  type: string
  inputBinding:
    prefix: --min-overlap
- id: km_er
  doc: length of a k-mer
  type: string
  inputBinding:
    prefix: --kmer
- id: out
  doc: write the paths to FILE
  type: File
  inputBinding:
    prefix: --out
- id: graph
  doc: write the graph to FILE
  type: File
  inputBinding:
    prefix: --graph
- id: tred
  doc: remove transitive edges
  type: boolean
  inputBinding:
    prefix: --tred
- id: no_tred
  doc: do not remove transitive edges [default]
  type: boolean
  inputBinding:
    prefix: --no-tred
- id: ss
  doc: expect contigs to be oriented correctly
  type: boolean
  inputBinding:
    prefix: --SS
- id: no_ss
  doc: no assumption about contig orientation [default]
  type: boolean
  inputBinding:
    prefix: --no-SS
- id: verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- abyss-layout
