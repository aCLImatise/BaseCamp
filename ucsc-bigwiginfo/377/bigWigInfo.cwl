class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bigWigInfo.cwl
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
- id: minmax
  doc: '- list the min and max on a single line'
  type: boolean
  inputBinding:
    prefix: -minMax
- id: file_dot_bw
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bigWigInfo
