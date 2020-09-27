class: CommandLineTool
id: versions.cwl
inputs:
- id: in_target
  doc: Target output file for version numbers
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- versions
