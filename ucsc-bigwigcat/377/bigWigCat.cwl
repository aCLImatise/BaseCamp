class: CommandLineTool
id: bigWigCat.cwl
inputs:
- id: items_per_slot
  doc: data points bundled at lowest level. Default 1024
  type: string
  inputBinding:
    prefix: -itemsPerSlot
outputs: []
cwlVersion: v1.1
baseCommand:
- bigWigCat
