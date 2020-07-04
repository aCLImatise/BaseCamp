class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/retaxdump.cwl
inputs:
- id: nodes_path
  doc: path for the nodes information files (nodes.dmp and names.dmp from NCBI
  type: File
  inputBinding:
    prefix: --nodespath
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -V
outputs: []
cwlVersion: v1.1
baseCommand:
- retaxdump
