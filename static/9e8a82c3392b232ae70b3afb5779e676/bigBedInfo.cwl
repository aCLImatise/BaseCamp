class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bigBedInfo.cwl
inputs:
- id: udc_dir
  doc: =/dir/to/cache - place to put cache for remote bigBed/bigWigs
  type: boolean
  inputBinding:
    prefix: -udcDir
- id: chrom_s
  doc: '- list all chromosomes and their sizes'
  type: boolean
  inputBinding:
    prefix: -chroms
- id: zooms
  doc: '- list all zoom levels and their sizes'
  type: boolean
  inputBinding:
    prefix: -zooms
- id: as
  doc: '- get autoSql spec'
  type: boolean
  inputBinding:
    prefix: -as
- id: extra_index
  doc: '- list all the extra indexes'
  type: boolean
  inputBinding:
    prefix: -extraIndex
- id: file_dot_bb
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bigBedInfo
