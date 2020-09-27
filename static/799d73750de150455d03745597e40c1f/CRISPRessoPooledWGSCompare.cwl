class: CommandLineTool
id: CRISPRessoPooledWGSCompare.cwl
inputs:
- id: in_comparison
  doc: "two CRISPRessoPooled or CRISPRessoWGS analysis-\n)                       \
    \                                                              )"
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
- id: in_cris_presso_pooled_wgs_output_folder_two
  doc: "Second output folder with CRISPRessoPooled or\nCRISPRessoWGS analysis"
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- CRISPRessoPooledWGSCompare
