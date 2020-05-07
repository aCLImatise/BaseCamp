class: CommandLineTool
id: bedToBigBed.cwl
inputs:
- id: in_bed
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: chrom_sizes
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_bb
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: sizes_is2bit
  doc: ', the chrom.sizes file is assumed to be a 2bit file.'
  type: string
  inputBinding:
    prefix: -sizesIs2Bit
- id: udc_dir
  doc: =/path/to/udcCacheDir  -- sets the UDC cache dir for caching of remote files.
  type: boolean
  inputBinding:
    prefix: -udcDir
outputs: []
cwlVersion: v1.1
baseCommand:
- bedToBigBed
