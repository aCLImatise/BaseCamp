class: CommandLineTool
id: pybel_manage_networks_drop.cwl
inputs:
- id: network_id
  doc: Identifier of network to drop
  type: long
  inputBinding:
    prefix: --network-id
- id: yes
  doc: Drop all networks without confirmation if no identifier is given
  type: boolean
  inputBinding:
    prefix: --yes
outputs: []
cwlVersion: v1.1
baseCommand:
- pybel
- manage
- networks
- drop
