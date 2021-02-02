class: CommandLineTool
id: setupLogoData.py.cwl
inputs:
- id: in_all
  doc: Fetch all data sets.
  type: boolean
  inputBinding:
    prefix: --all
- id: in_repository_folder
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- setupLogoData.py
