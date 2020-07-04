class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/Catrack.cwl
inputs:
- id: _verbose
  doc: ': verbose'
  type: boolean
  inputBinding:
    prefix: -v
- id: delete_individual_blocks
  doc: ': delete individual blocks after a successful concatenation'
  type: boolean
  inputBinding:
    prefix: -d
- id: force_overwrite_present
  doc: ': force overwrite of track if already present'
  type: boolean
  inputBinding:
    prefix: -f
- id: vfd
  doc: ''
  type: boolean
  inputBinding:
    prefix: -vfd
outputs: []
cwlVersion: v1.1
baseCommand:
- Catrack
