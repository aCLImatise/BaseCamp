class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/crTreeIndexBed.cwl
inputs:
- id: block_size
  doc: '- number of children per node in index tree. Default 1024'
  type: string
  inputBinding:
    prefix: -blockSize
- id: items_per_slot
  doc: '- number of items per index slot. Default is half block size'
  type: string
  inputBinding:
    prefix: -itemsPerSlot
- id: no_check_sort
  doc: "- Don't check sorting order of in.tab"
  type: boolean
  inputBinding:
    prefix: -noCheckSort
- id: in_dot_bed
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_do_tcr
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- crTreeIndexBed
