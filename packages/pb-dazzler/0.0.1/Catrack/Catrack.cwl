class: CommandLineTool
id: Catrack.cwl
inputs:
- id: in__verbose
  doc: ': verbose'
  type: boolean
  inputBinding:
    prefix: -v
- id: in_delete_individual_blocks
  doc: ': delete individual blocks after a successful concatenation'
  type: boolean
  inputBinding:
    prefix: -d
- id: in_force_overwrite_present
  doc: ': force overwrite of track if already present'
  type: boolean
  inputBinding:
    prefix: -f
- id: in_vfd
  doc: ''
  type: boolean
  inputBinding:
    prefix: -vfd
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- Catrack
