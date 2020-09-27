class: CommandLineTool
id: CRISPRessoCompare.cwl
inputs:
- id: in_comparison
  doc: "two CRISPResso analysis-\n)                                              \
    \  )"
  type: string
  inputBinding:
    prefix: -Comparison
- id: in_save_also_png
  doc: Save also .png images additionally to .pdf files
  type: boolean
  inputBinding:
    prefix: --save_also_png
- id: in_none
  doc: ''
  type: long
  inputBinding:
    prefix: -n1
- id: in_n
  doc: ''
  type: string
  inputBinding:
    prefix: -n
- id: in_cris_presso_output_folder_one
  doc: First output folder with CRISPResso analysis
  type: long
  inputBinding:
    position: 0
- id: in_cris_presso_output_folder_two
  doc: Second output folder with CRISPResso analysis
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- CRISPRessoCompare
