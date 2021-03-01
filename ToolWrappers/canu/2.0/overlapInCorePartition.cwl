class: CommandLineTool
id: overlapInCorePartition.cwl
inputs:
- id: in_opts
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- overlapInCorePartition
