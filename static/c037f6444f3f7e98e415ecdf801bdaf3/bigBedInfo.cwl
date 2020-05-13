class: CommandLineTool
id: bigBedInfo.cwl
inputs:
- id: file_bb
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: udc_dir
  doc: =/dir/to/cache - place to put cache for remote bigBed/bigWigs
  type: boolean
  inputBinding:
    prefix: -udcDir
- id: chrom_s
  doc: chromosomes and their sizes
  type: string
  inputBinding:
    prefix: -chroms
- id: zooms
  doc: zoom levels and their sizes
  type: string
  inputBinding:
    prefix: -zooms
- id: get
  doc: spec
  type: string
  inputBinding:
    prefix: '- get'
- id: extra_index
  doc: the extra indexes
  type: string
  inputBinding:
    prefix: -extraIndex
outputs: []
cwlVersion: v1.1
baseCommand:
- bigBedInfo
