class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/dx_jobutil_dxlink.cwl
inputs:
- id: object
  doc: Data object ID or "<Project ID>:<Data object ID>" to package into a DNAnexus
    link
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- dx-jobutil-dxlink
