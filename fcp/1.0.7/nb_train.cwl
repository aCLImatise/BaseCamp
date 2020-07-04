class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/nb_train.cwl
inputs:
- id: contact
  doc: Print contact information.
  type: boolean
  inputBinding:
    prefix: --contact
- id: desired_oligonucleotide_default
  doc: Desired oligonucleotide length (default = 8).
  type: long
  inputBinding:
    prefix: -n
- id: s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
- id: m
  doc: ''
  type: string
  inputBinding:
    prefix: -m
outputs: []
cwlVersion: v1.1
baseCommand:
- nb-train
