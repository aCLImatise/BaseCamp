class: CommandLineTool
id: faTrans.cwl
inputs:
- id: in_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
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
  doc: in upper case
  type: string
  inputBinding:
    prefix: -cdsUpper
outputs: []
cwlVersion: v1.1
baseCommand:
- faTrans
