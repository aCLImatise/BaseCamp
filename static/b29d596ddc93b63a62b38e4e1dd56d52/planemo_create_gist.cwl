class: CommandLineTool
id: planemo_create_gist.cwl
inputs:
- id: in_link_type
  doc: '[raw|html]  Link type to generate for the file.'
  type: boolean
  inputBinding:
    prefix: --link_type
- id: in_file_path
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- planemo
- create_gist
