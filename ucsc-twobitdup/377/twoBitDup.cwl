class: CommandLineTool
id: twoBitDup.cwl
inputs:
- id: file_2bit
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: udc_dir
  doc: =/dir/to/cache - place to put cache for remote bigBed/bigWigs
  type: boolean
  inputBinding:
    prefix: -udcDir
outputs: []
cwlVersion: v1.1
baseCommand:
- twoBitDup
