class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/createChemistryHeader.py_output_header_file.cwl
inputs:
- id: debug
  doc: ''
  type: boolean
  inputBinding:
    prefix: --debug
- id: bas_files
  doc: ''
  type: string[]
  inputBinding:
    prefix: --bas_files
- id: get_chemistry_header_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- createChemistryHeader.py
- output_header_file
