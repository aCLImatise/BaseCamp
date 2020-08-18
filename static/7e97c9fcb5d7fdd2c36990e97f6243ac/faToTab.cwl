class: CommandLineTool
id: ../../../faToTab.cwl
inputs:
- id: type
  doc: sequence type, dna or protein, default is dna
  type: string
  inputBinding:
    prefix: -type
- id: keep_acc_suffix
  doc: "- don't strip dot version off of sequence id, keep as is"
  type: boolean
  inputBinding:
    prefix: -keepAccSuffix
- id: in_filename
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_filename
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- faToTab
