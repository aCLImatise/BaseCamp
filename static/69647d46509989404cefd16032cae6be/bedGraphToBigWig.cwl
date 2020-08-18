class: CommandLineTool
id: ../../../bedGraphToBigWig.cwl
inputs:
- id: block_size
  doc: '- Number of items to bundle in r-tree.  Default 256'
  type: string
  inputBinding:
    prefix: -blockSize
- id: items_per_slot
  doc: '- Number of data points bundled at lowest level. Default 1024'
  type: string
  inputBinding:
    prefix: -itemsPerSlot
- id: unc
  doc: '- If set, do not use compression.'
  type: boolean
  inputBinding:
    prefix: -unc
- id: in_dot_bed_graph
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: chrom_dot_sizes
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_dot_bw
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- bedGraphToBigWig
