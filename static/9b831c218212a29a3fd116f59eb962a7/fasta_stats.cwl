class: CommandLineTool
id: fasta_stats.cwl
inputs:
- id: b
  doc: '##   size of big scaffold cutoff in kb [50]'
  type: boolean
  inputBinding:
    prefix: -b
- id: g
  doc: '##   minimum size bin to display for gaps [none]'
  type: boolean
  inputBinding:
    prefix: -g
- id: l
  doc: '##   minimum size bin to display [1000]'
  type: boolean
  inputBinding:
    prefix: -l
- id: n
  doc: "##   exact length of N's to signal scaffold end [-1]"
  type: boolean
  inputBinding:
    prefix: -N
- id: n
  doc: "##   minimum length of N's to signal contig end [9]"
  type: boolean
  inputBinding:
    prefix: -n
outputs: []
cwlVersion: v1.1
baseCommand:
- fasta_stats
