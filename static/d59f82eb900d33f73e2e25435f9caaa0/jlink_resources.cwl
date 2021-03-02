class: CommandLineTool
id: jlink_resources.cwl
inputs:
- id: in_add_modules
  doc: ''
  type: string?
  inputBinding:
    prefix: --add-modules
- id: in_module_path
  doc: ''
  type: File?
  inputBinding:
    prefix: --module-path
- id: in_j_link
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_options
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- jlink
- resources
