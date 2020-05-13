class: CommandLineTool
id: pybel_manage_networks_ls.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- pybel
- manage
- networks
- ls
