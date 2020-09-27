class: CommandLineTool
id: pybel_manage_namespaces.cwl
inputs:
- id: in_drop
  doc: Drop a namespace by URL.
  type: string
  inputBinding:
    position: 0
- id: in_insert
  doc: Add a namespace by URL.
  type: string
  inputBinding:
    position: 1
- id: in_ls
  doc: List cached namespaces.
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pybel
- manage
- namespaces
