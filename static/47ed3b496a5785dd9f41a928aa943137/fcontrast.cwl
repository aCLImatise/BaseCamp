class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fcontrast.cwl
inputs:
- id: vary_within
  doc: boolean    [N] Within-population variation in data
  type: boolean
  inputBinding:
    prefix: -varywithin
outputs: []
cwlVersion: v1.1
baseCommand:
- fcontrast
