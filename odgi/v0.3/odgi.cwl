#!/usr/bin/env cwl-runner

baseCommand:
- odgi
class: CommandLineTool
cwlVersion: v1.0
id: odgi
inputs:
- doc: ''
  id: command
  inputBinding:
    position: 0
  type: string
- doc: build dynamic succinct variation graph
  id: build
  inputBinding:
    prefix: -- build
  type: boolean
- doc: extract statistics and properties of the graph
  id: stats
  inputBinding:
    prefix: -- stats
  type: boolean
- doc: topologically order the graph
  id: sort
  inputBinding:
    prefix: -- sort
  type: boolean
- doc: projection of graphs into other formats
  id: view
  inputBinding:
    prefix: -- view
  type: boolean
- doc: process and dump the kmers of the graph
  id: km_ers
  inputBinding:
    prefix: -- kmers
  type: boolean
- doc: emit the unitigs of the graph
  id: unit_ig
  inputBinding:
    prefix: -- unitig
  type: boolean
- doc: visualize the graph
  id: viz
  inputBinding:
    prefix: -- viz
  type: boolean
- doc: interrogation and manipulation of paths
  id: paths
  inputBinding:
    prefix: -- paths
  type: boolean
- doc: prune the graph based on coverage or topological complexity
  id: prune
  inputBinding:
    prefix: -- prune
  type: boolean
- doc: merge unbranching linear components into single nodes
  id: simplify
  inputBinding:
    prefix: -- simplify
  type: boolean
- doc: extract subsets of the graph as defined by query criteria
  id: subset
  inputBinding:
    prefix: -- subset
  type: boolean
- doc: bin path information across the graph
  id: bin
  inputBinding:
    prefix: -- bin
  type: boolean
- doc: graph topology in sparse matrix form
  id: matrix
  inputBinding:
    prefix: -- matrix
  type: boolean
- doc: chop long nodes into short ones while preserving topology
  id: chop
  inputBinding:
    prefix: -- chop
  type: boolean
- doc: use SGD to make 2D layouts of the graph
  id: layout
  inputBinding:
    prefix: -- layout
  type: boolean
- doc: project the graph sequence and paths into FASTA and BED
  id: flatten
  inputBinding:
    prefix: -- flatten
  type: boolean
- doc: break cycles in the graph
  id: break
  inputBinding:
    prefix: -- break
  type: boolean
- doc: create a path index for a given graph
  id: path_index
  inputBinding:
    prefix: -- pathindex
  type: boolean
- doc: get the pangenome position for a given path and nucleotide position
  id: pan_pos
  inputBinding:
    prefix: -- panpos
  type: boolean
- doc: start a HTTP server with a given index file to query a pangenome position
  id: server
  inputBinding:
    prefix: -- server
  type: boolean
- doc: run unit tests
  id: test
  inputBinding:
    prefix: -- test
  type: boolean
