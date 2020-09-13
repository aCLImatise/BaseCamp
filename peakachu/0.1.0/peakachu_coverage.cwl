class: CommandLineTool
id: ../../../peakachu_coverage.cwl
inputs:
- id: in_max_proc
  doc: ''
  type: long
  inputBinding:
    prefix: --max_proc
- id: in_project_folder
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
- peakachu
- coverage
