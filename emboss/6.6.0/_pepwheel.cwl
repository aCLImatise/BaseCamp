class: CommandLineTool
id: _pepwheel.cwl
inputs:
- id: steps
  doc: integer    [18] The number of residues plotted per turn is this value divided
    by the 'turns' value. (Integer from 2 to 100)
  type: boolean
  inputBinding:
    prefix: -steps
- id: turns
  doc: integer    [5] The number of residues plotted per turn is the 'steps' value
    divided by this value. (Integer from 1 to 100)
  type: boolean
  inputBinding:
    prefix: -turns
outputs: []
cwlVersion: v1.1
baseCommand:
- _pepwheel
