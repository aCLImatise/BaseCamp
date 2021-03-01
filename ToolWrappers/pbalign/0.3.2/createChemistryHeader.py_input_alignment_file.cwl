class: CommandLineTool
id: createChemistryHeader.py_input_alignment_file.cwl
inputs:
- id: in_bas_files
  doc: ''
  type: string[]
  inputBinding:
    prefix: --bas_files
- id: in_debug
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_get_chemistry_header_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- createChemistryHeader.py
- input_alignment_file
