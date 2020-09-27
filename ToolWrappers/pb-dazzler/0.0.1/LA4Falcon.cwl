class: CommandLineTool
id: LA4Falcon.cwl
inputs:
- id: in_smfocargyufmpi
  doc: ''
  type: boolean
  inputBinding:
    prefix: -smfocargyUFMPI
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- LA4Falcon
