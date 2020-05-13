class: CommandLineTool
id: CRISPRessoCompare.cwl
inputs:
- id: cris_presso_output_folder_1
  doc: First output folder with CRISPResso analysis
  type: string
  inputBinding:
    position: 0
- id: cris_presso_output_folder_2
  doc: Second output folder with CRISPResso analysis
  type: string
  inputBinding:
    position: 1
- id: save_also_png
  doc: 'Save also .png images additionally to .pdf files (default: False)'
  type: boolean
  inputBinding:
    prefix: --save_also_png
outputs: []
cwlVersion: v1.1
baseCommand:
- CRISPRessoCompare
