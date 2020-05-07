class: CommandLineTool
id: bigWigInfo.cwl
inputs:
- id: file_bw
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
- id: minmax
  doc: min and max on a single line
  type: string
  inputBinding:
    prefix: -minMax
outputs: []
cwlVersion: v1.1
baseCommand:
- bigWigInfo
