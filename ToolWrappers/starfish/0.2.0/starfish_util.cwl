class: CommandLineTool
id: starfish_util.cwl
inputs:
- id: in_install_strict_dependencies
  doc: warning! updates different packages in your...
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
- starfish
- util
