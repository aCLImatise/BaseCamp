class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/msdir.cwl
inputs:
- id: b
  doc: '[ --brief ]        : display brief listing [default]'
  type: boolean
  inputBinding:
    prefix: -b
- id: display_detailed_listing
  doc: '[ --detailed ]     : display detailed listing (tabular)'
  type: boolean
  inputBinding:
    prefix: -d
- id: display_sourcelevel_metadata
  doc: '[ --full ]         : display all source-level metadata'
  type: boolean
  inputBinding:
    prefix: -f
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: or
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: directory
  doc: ''
  type: Directory
  inputBinding:
    position: 2
- id: paths
  doc: ''
  type: File
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- msdir
