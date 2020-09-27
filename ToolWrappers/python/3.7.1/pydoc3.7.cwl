class: CommandLineTool
id: pydoc3.7.cwl
inputs:
- id: in_package_dot
  doc: If <name> contains a '/', it is used as the path to a
  type: string
  inputBinding:
    position: 0
- id: in_directory_dot
  doc: If <name> contains a '/', it is treated as a filename; if
  type: Directory
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pydoc3.7
