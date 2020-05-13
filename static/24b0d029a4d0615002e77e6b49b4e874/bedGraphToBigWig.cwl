class: CommandLineTool
id: bedGraphToBigWig.cwl
inputs:
- id: in_bed_graph
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: chrom_sizes
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_bw
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: block_size
  doc: items to bundle in r-tree.  Default 256
  type: string
  inputBinding:
    prefix: -blockSize
- id: items_per_slot
  doc: data points bundled at lowest level. Default 1024
  type: string
  inputBinding:
    prefix: -itemsPerSlot
- id: unc
  doc: ', do not use compression.'
  type: string
  inputBinding:
    prefix: -unc
outputs: []
cwlVersion: v1.1
baseCommand:
- bedGraphToBigWig
