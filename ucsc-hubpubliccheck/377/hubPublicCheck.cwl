class: CommandLineTool
id: hubPublicCheck.cwl
inputs:
- id: tablename
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: udc_dir
  doc: =/dir/to/cache - place to put cache for remote bigBed/bigWigs
  type: boolean
  inputBinding:
    prefix: -udcDir
- id: add_hub
  doc: '- output statments to add url to table'
  type: string
  inputBinding:
    prefix: -addHub
outputs: []
cwlVersion: v1.1
baseCommand:
- hubPublicCheck
