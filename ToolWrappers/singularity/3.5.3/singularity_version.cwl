class: CommandLineTool
id: singularity_version.cwl
inputs:
- id: in_singularity
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
- singularity
- version
