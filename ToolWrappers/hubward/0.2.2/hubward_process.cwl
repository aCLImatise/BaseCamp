class: CommandLineTool
id: hubward_process.cwl
inputs:
- id: in_or
  doc: '- a file called metadata-builder.py (in which case it is executed and'
  type: string
  inputBinding:
    position: 0
- id: in_items
  doc: "Path to directory containing metadata.yaml file or metadata-\nbuilder.yaml\
    \ file, or path to a group config YAML file. Can\nspecify multiple."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hubward
- process
