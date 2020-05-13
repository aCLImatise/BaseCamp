class: CommandLineTool
id: bigWigSummary.cwl
inputs:
- id: file_bigwig
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: chrom
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: start
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: end
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: data_points
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: udc_dir
  doc: =/dir/to/cache - place to put cache for remote bigBed/bigWigs
  type: boolean
  inputBinding:
    prefix: -udcDir
outputs: []
cwlVersion: v1.1
baseCommand:
- bigWigSummary
