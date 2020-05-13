class: CommandLineTool
id: prophex_query.cwl
inputs:
- id: idx_base
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_fq
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: k
  doc: length of k-mer
  type: long
  inputBinding:
    prefix: -k
- id: u
  doc: use k-LCP for querying
  type: boolean
  inputBinding:
    prefix: -u
- id: v
  doc: output set of chromosomes for every k-mer
  type: boolean
  inputBinding:
    prefix: -v
- id: p
  doc: do not check whether k-mer is on border of two contigs, and show such k-mers
    in output
  type: boolean
  inputBinding:
    prefix: -p
- id: b
  doc: print sequences and base qualities
  type: boolean
  inputBinding:
    prefix: -b
- id: l
  doc: log file name to output statistics
  type: string
  inputBinding:
    prefix: -l
- id: t
  doc: number of threads [1]
  type: long
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- prophex
- query
