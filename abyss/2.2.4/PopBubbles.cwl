class: CommandLineTool
id: PopBubbles.cwl
inputs:
- id: fast_a
  doc: contigs in FASTA format
  type: string
  inputBinding:
    position: 0
- id: adj
  doc: contig adjacency graph
  type: string
  inputBinding:
    position: 1
- id: km_er
  doc: k-mer size
  type: string
  inputBinding:
    prefix: --kmer
- id: branches
  doc: 'maximum number of branches, default: 2'
  type: string
  inputBinding:
    prefix: --branches
- id: bubble_length
  doc: pop bubbles shorter than N bp default is 10000
  type: string
  inputBinding:
    prefix: --bubble-length
- id: identity
  doc: 'minimum identity, default: 0.9'
  type: string
  inputBinding:
    prefix: --identity
- id: coverage
  doc: remove contigs with mean k-mer coverage less than this threshold [0]
  type: string
  inputBinding:
    prefix: --coverage
- id: scaffold
  doc: scaffold over bubbles that have insufficient identity
  type: boolean
  inputBinding:
    prefix: --scaffold
- id: no_scaffold
  doc: disable scaffolding [default]
  type: boolean
  inputBinding:
    prefix: --no-scaffold
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
- id: graph
  doc: write the contig adjacency graph to FILE
  type: File
  inputBinding:
    prefix: --graph
- id: adj
  doc: output the graph in ADJ format [default]
  type: boolean
  inputBinding:
    prefix: --adj
- id: as_qg
  doc: output the graph in ASQG format
  type: boolean
  inputBinding:
    prefix: --asqg
- id: dot
  doc: output the graph in GraphViz format
  type: boolean
  inputBinding:
    prefix: --dot
- id: gfa
  doc: output the graph in GFA1 format
  type: boolean
  inputBinding:
    prefix: --gfa
- id: gfa1
  doc: output the graph in GFA1 format
  type: boolean
  inputBinding:
    prefix: --gfa1
- id: gfa2
  doc: output the graph in GFA2 format
  type: boolean
  inputBinding:
    prefix: --gfa2
- id: gv
  doc: output the graph in GraphViz format
  type: boolean
  inputBinding:
    prefix: --gv
- id: sam
  doc: output the graph in SAM format
  type: boolean
  inputBinding:
    prefix: --sam
- id: bubble_graph
  doc: output a graph of the bubbles
  type: boolean
  inputBinding:
    prefix: --bubble-graph
- id: threads
  doc: use N parallel threads [1]
  type: string
  inputBinding:
    prefix: --threads
- id: verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- PopBubbles
