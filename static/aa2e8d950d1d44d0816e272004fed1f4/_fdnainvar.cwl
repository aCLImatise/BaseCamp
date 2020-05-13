class: CommandLineTool
id: _fdnainvar.cwl
inputs:
- id: weights
  doc: properties Phylip weights file (optional)
  type: boolean
  inputBinding:
    prefix: -weights
- id: print_data
  doc: boolean    [N] Print data at start of run
  type: boolean
  inputBinding:
    prefix: -printdata
outputs: []
cwlVersion: v1.1
baseCommand:
- _fdnainvar
