class: CommandLineTool
id: ../../../bbduk.sh.cwl
inputs:
- id: km_ers_dot
  doc: 1 means use all, 2 means use every other kmer, etc.
  type: string
  inputBinding:
    position: 0
- id: discarded_dot
  doc: Pairs will be discarded if both are shorter.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bbduk.sh
