class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/cacheensembl.cwl
inputs:
- id: servername
  doc: string     Server name (Any string)
  type: boolean
  inputBinding:
    prefix: -servername
outputs: []
cwlVersion: v1.1
baseCommand:
- cacheensembl
