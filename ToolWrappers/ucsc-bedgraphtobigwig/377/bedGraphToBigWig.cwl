class: CommandLineTool
id: bedGraphToBigWig.cwl
inputs:
- id: in_block_size
  doc: '- Number of items to bundle in r-tree.  Default 256'
  type: long
  inputBinding:
    prefix: -blockSize
- id: in_items_per_slot
  doc: '- Number of data points bundled at lowest level. Default 1024'
  type: long
  inputBinding:
    prefix: -itemsPerSlot
- id: in_unc
  doc: '- If set, do not use compression.'
  type: boolean
  inputBinding:
    prefix: -unc
- id: in_in_dot_bed_graph
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_chrom_dot_sizes
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bedGraphToBigWig
