class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/pybel_manage_drop.cwl
inputs:
- id: yes
  doc: Confirm the action without prompting.
  type: boolean
  inputBinding:
    prefix: --yes
outputs: []
cwlVersion: v1.1
baseCommand:
- pybel
- manage
- drop
