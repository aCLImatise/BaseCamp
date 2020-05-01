#!/usr/bin/env cwl-runner

baseCommand:
- pyrad
class: CommandLineTool
cwlVersion: v1.0
id: pyrad
inputs:
- doc: ''
  id: pyra_d
  inputBinding:
    position: 0
  type: string
- doc: input file for within sample filtering and clustering
  id: p
  inputBinding:
    prefix: -p
  type: string
- doc: perform step-wise parts of within analysis 1 = barcode sorting 2 = filter/edit
    raw sequences 3 = within-sample clustering 4 = estimate pi and e 5 = consensus
    calling 6 = cluster consensus 7 = align & create output files
  id: s
  inputBinding:
    prefix: -s
  type: string
- doc: input file for D-test of introgression, can iterate over multiple samples
  id: d
  inputBinding:
    prefix: -d
  type: string
- doc: creates a new empty input params.txt file
  id: n
  inputBinding:
    prefix: -n
  type: boolean
- doc: creates a new empty Dtest input file
  id: d
  inputBinding:
    prefix: -D
  type: boolean
