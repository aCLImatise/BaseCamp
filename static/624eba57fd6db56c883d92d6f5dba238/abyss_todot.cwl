class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/abyss_todot.cwl
inputs:
- id: km_er
  doc: report the mean k-mer coverage, otherwise the sum k-mer coverage is reported
  type: string
  inputBinding:
    prefix: --kmer
- id: adj
  doc: output the graph in adj format
  type: boolean
  inputBinding:
    prefix: --adj
- id: as_qg
  doc: output the graph in asqg format
  type: boolean
  inputBinding:
    prefix: --asqg
- id: dist
  doc: output the graph in dist format
  type: boolean
  inputBinding:
    prefix: --dist
- id: dot
  doc: output the graph in GraphViz format [default]
  type: boolean
  inputBinding:
    prefix: --dot
- id: gv
  doc: output the graph in GraphViz format
  type: boolean
  inputBinding:
    prefix: --gv
- id: dot_mean_cov
  doc: same as above but give the mean coverage
  type: boolean
  inputBinding:
    prefix: --dot-meancov
- id: gfa
  doc: output the graph in GFA format
  type: boolean
  inputBinding:
    prefix: --gfa
- id: sam
  doc: output the graph in SAM format
  type: boolean
  inputBinding:
    prefix: --sam
- id: estimate
  doc: distance estimates
  type: string
  inputBinding:
    prefix: --estimate
- id: verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- abyss-todot
