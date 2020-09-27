class: CommandLineTool
id: pybel_manage_networks.cwl
inputs:
- id: in_drop
  doc: Drop a network by its identifier or drop all networks.
  type: string
  inputBinding:
    position: 0
- id: in_ls
  doc: List network names, versions, and optionally, descriptions.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pybel
- manage
- networks
