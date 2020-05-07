class: CommandLineTool
id: CRISPRessoPooledWGSCompare.cwl
inputs:
- id: cris_presso_pooled_wgs_output_folder_1
  doc: First output folder with CRISPRessoPooled or CRISPRessoWGS analysis
  type: string
  inputBinding:
    position: 0
- id: cris_presso_pooled_wgs_output_folder_2
  doc: Second output folder with CRISPRessoPooled or CRISPRessoWGS analysis
  type: string
  inputBinding:
    position: 1
- id: n_processes
  doc: 'Number of processes to use for CRISPResso comparison (default: 1)'
  type: string
  inputBinding:
    prefix: --n_processes
- id: save_also_png
  doc: 'Save also .png images additionally to .pdf files (default: False)'
  type: boolean
  inputBinding:
    prefix: --save_also_png
- id: debug
  doc: 'Show debug messages (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- CRISPRessoPooledWGSCompare
