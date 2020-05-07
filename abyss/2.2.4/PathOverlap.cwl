class: CommandLineTool
id: PathOverlap.cwl
inputs:
- id: adj
  doc: contig adjacency graph
  type: string
  inputBinding:
    position: 0
- id: path
  doc: sequences of contig IDs
  type: File
  inputBinding:
    position: 1
- id: km_er
  doc: k-mer size
  type: string
  inputBinding:
    prefix: --kmer
- id: graph
  doc: write the contig adjacency graph to FILE
  type: File
  inputBinding:
    prefix: --graph
- id: repeats
  doc: write repeat contigs to FILE
  type: File
  inputBinding:
    prefix: --repeats
- id: overlap
  doc: find overlapping paths [default]
  type: boolean
  inputBinding:
    prefix: --overlap
- id: assemble
  doc: assemble overlapping paths
  type: boolean
  inputBinding:
    prefix: --assemble
- id: trim
  doc: trim overlapping paths
  type: boolean
  inputBinding:
    prefix: --trim
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
- id: db
  doc: specify path of database repository in FILE
  type: File
  inputBinding:
    prefix: --db
- id: library
  doc: specify library NAME for sqlite
  type: string
  inputBinding:
    prefix: --library
- id: strain
  doc: specify strain NAME for sqlite
  type: string
  inputBinding:
    prefix: --strain
- id: species
  doc: specify species NAME for sqlite
  type: string
  inputBinding:
    prefix: --species
outputs: []
cwlVersion: v1.1
baseCommand:
- PathOverlap
