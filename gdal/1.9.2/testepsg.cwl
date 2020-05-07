class: CommandLineTool
id: testepsg.cwl
inputs:
- id: t
  doc: ': transform a coordinate from source GCS/PCS to target GCS/PCS'
  type: boolean
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- testepsg
