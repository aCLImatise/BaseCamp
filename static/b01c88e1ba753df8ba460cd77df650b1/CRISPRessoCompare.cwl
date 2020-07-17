class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/CRISPRessoCompare.cwl
inputs:
- id: save_also_png
  doc: 'Save also .png images additionally to .pdf files (default: False)'
  type: boolean
  inputBinding:
    prefix: --save_also_png
- id: n
  doc: ''
  type: string
  inputBinding:
    prefix: -n
- id: none
  doc: ''
  type: string
  inputBinding:
    prefix: -n1
- id: cris_presso_output_folder_one
  doc: First output folder with CRISPResso analysis
  type: string
  inputBinding:
    position: 0
- id: cris_presso_output_folder_two
  doc: Second output folder with CRISPResso analysis
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- CRISPRessoCompare
