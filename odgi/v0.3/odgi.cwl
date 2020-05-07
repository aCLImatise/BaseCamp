class: CommandLineTool
id: odgi.cwl
inputs:
- id: command
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: build
  doc: build dynamic succinct variation graph
  type: boolean
  inputBinding:
    prefix: -- build
- id: stats
  doc: extract statistics and properties of the graph
  type: boolean
  inputBinding:
    prefix: -- stats
- id: sort
  doc: topologically order the graph
  type: boolean
  inputBinding:
    prefix: -- sort
- id: view
  doc: projection of graphs into other formats
  type: boolean
  inputBinding:
    prefix: -- view
- id: km_ers
  doc: process and dump the kmers of the graph
  type: boolean
  inputBinding:
    prefix: -- kmers
- id: unit_ig
  doc: emit the unitigs of the graph
  type: boolean
  inputBinding:
    prefix: -- unitig
- id: viz
  doc: visualize the graph
  type: boolean
  inputBinding:
    prefix: -- viz
- id: paths
  doc: interrogation and manipulation of paths
  type: boolean
  inputBinding:
    prefix: -- paths
- id: prune
  doc: prune the graph based on coverage or topological complexity
  type: boolean
  inputBinding:
    prefix: -- prune
- id: simplify
  doc: merge unbranching linear components into single nodes
  type: boolean
  inputBinding:
    prefix: -- simplify
- id: subset
  doc: extract subsets of the graph as defined by query criteria
  type: boolean
  inputBinding:
    prefix: -- subset
- id: bin
  doc: bin path information across the graph
  type: boolean
  inputBinding:
    prefix: -- bin
- id: matrix
  doc: graph topology in sparse matrix form
  type: boolean
  inputBinding:
    prefix: -- matrix
- id: chop
  doc: chop long nodes into short ones while preserving topology
  type: boolean
  inputBinding:
    prefix: -- chop
- id: layout
  doc: use SGD to make 2D layouts of the graph
  type: boolean
  inputBinding:
    prefix: -- layout
- id: flatten
  doc: project the graph sequence and paths into FASTA and BED
  type: boolean
  inputBinding:
    prefix: -- flatten
- id: break
  doc: break cycles in the graph
  type: boolean
  inputBinding:
    prefix: -- break
- id: path_index
  doc: create a path index for a given graph
  type: boolean
  inputBinding:
    prefix: -- pathindex
- id: pan_pos
  doc: get the pangenome position for a given path and nucleotide position
  type: boolean
  inputBinding:
    prefix: -- panpos
- id: server
  doc: start a HTTP server with a given index file to query a pangenome position
  type: boolean
  inputBinding:
    prefix: -- server
- id: test
  doc: run unit tests
  type: boolean
  inputBinding:
    prefix: -- test
outputs: []
cwlVersion: v1.1
baseCommand:
- odgi
