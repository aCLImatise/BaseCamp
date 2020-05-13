class: CommandLineTool
id: crTreeIndexBed.cwl
inputs:
- id: in_bed
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_cr
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: block_size
  doc: children per node in index tree. Default 1024
  type: string
  inputBinding:
    prefix: -blockSize
- id: items_per_slot
  doc: items per index slot. Default is half block size
  type: string
  inputBinding:
    prefix: -itemsPerSlot
- id: no_check_sort
  doc: "'t check sorting order of in.tab"
  type: boolean
  inputBinding:
    prefix: -noCheckSort
outputs: []
cwlVersion: v1.1
baseCommand:
- crTreeIndexBed
