class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/CRISPRessoPooledWGSCompare.cwl
inputs:
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
- id: cris_presso_pooled_wgs_output_folder_one
  doc: First output folder with CRISPRessoPooled or CRISPRessoWGS analysis
  type: string
  inputBinding:
    position: 0
- id: cris_presso_pooled_wgs_output_folder_two
  doc: Second output folder with CRISPRessoPooled or CRISPRessoWGS analysis
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- CRISPRessoPooledWGSCompare
