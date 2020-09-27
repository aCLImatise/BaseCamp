class: CommandLineTool
id: NB_BL.py.cwl
inputs:
- id: in_nb_results
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_blastn_results
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_results_file
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- NB-BL.py
