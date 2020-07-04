class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/faTrans.cwl
inputs:
- id: stop
  doc: at first stop codon (otherwise puts in Z for stop codons)
  type: string
  inputBinding:
    prefix: -stop
- id: offset
  doc: start at a particular offset.
  type: string
  inputBinding:
    prefix: -offset
- id: cds_upper
  doc: '- cds is in upper case'
  type: boolean
  inputBinding:
    prefix: -cdsUpper
- id: in_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- faTrans
