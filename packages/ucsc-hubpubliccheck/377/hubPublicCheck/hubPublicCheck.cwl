class: CommandLineTool
id: hubPublicCheck.cwl
inputs:
- id: in_udc_dir
  doc: =/dir/to/cache - place to put cache for remote bigBed/bigWigs
  type: boolean
  inputBinding:
    prefix: -udcDir
- id: in_add_hub
  doc: '- output statments to add url to table'
  type: string
  inputBinding:
    prefix: -addHub
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hubPublicCheck
