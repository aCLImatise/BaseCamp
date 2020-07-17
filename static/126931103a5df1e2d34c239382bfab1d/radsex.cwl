class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/radsex.cwl
inputs:
- id: depth
  doc: Compute number of retained reads for each individual
  type: string
  inputBinding:
    position: 0
- id: distrib
  doc: Compute the distribution of markers between group1 and group2
  type: string
  inputBinding:
    position: 1
- id: freq
  doc: Compute marker frequencies in all individuals
  type: string
  inputBinding:
    position: 2
- id: map
  doc: Align markers to a genome and compute metrics for each aligned marker
  type: string
  inputBinding:
    position: 3
- id: process
  doc: Compute a table of marker depths from a set of demultiplexed reads files
  type: string
  inputBinding:
    position: 4
- id: sign_if
  doc: Extract markers significantly associated with phenotypic group from a marker
    depths table
  type: string
  inputBinding:
    position: 5
- id: subset
  doc: Extract a subset of a marker depths table
  type: string
  inputBinding:
    position: 6
outputs: []
cwlVersion: v1.1
baseCommand:
- radsex
