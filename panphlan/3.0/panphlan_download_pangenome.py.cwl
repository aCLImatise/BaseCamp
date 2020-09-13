class: CommandLineTool
id: ../../../panphlan_download_pangenome.py.cwl
inputs:
- id: in_input_name
  doc: ''
  type: string
  inputBinding:
    prefix: --input_name
- id: in_output
  doc: ''
  type: string
  inputBinding:
    prefix: --output
- id: in_verbose
  doc: Show progress information
  type: boolean
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- panphlan_download_pangenome.py
