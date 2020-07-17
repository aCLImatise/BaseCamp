class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/etandem.cwl
inputs:
- id: min_repeat
  doc: integer    [10] Minimum repeat size (Integer, 2 or higher)
  type: boolean
  inputBinding:
    prefix: -minrepeat
- id: max_repeat
  doc: integer    [Same as -minrepeat] Maximum repeat size (Integer, same as -minrepeat
    or higher)
  type: boolean
  inputBinding:
    prefix: -maxrepeat
outputs: []
cwlVersion: v1.1
baseCommand:
- etandem
