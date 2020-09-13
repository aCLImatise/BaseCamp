class: CommandLineTool
id: ../../../cmpress.cwl
inputs:
- id: in_force_overwrite_files
  doc: ': force: overwrite any previous pressed files'
  type: boolean
  inputBinding:
    prefix: -F
- id: in_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- cmpress
