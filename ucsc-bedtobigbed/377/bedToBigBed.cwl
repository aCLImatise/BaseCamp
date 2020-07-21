class: CommandLineTool
id: ../../../bedToBigBed.cwl
inputs:
- id: sizes_is_two_bit
  doc: -- If set, the chrom.sizes file is assumed to be a 2bit file.
  type: boolean
  inputBinding:
    prefix: -sizesIs2Bit
- id: udc_dir
  doc: =/path/to/udcCacheDir  -- sets the UDC cache dir for caching of remote files.
  type: boolean
  inputBinding:
    prefix: -udcDir
- id: in_dot_bed
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: chrom_dot_sizes
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_dot_bb
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- bedToBigBed
