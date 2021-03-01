class: CommandLineTool
id: crTreeIndexBed.cwl
inputs:
- id: in_block_size
  doc: '- number of children per node in index tree. Default 1024'
  type: long?
  inputBinding:
    prefix: -blockSize
- id: in_items_per_slot
  doc: '- number of items per index slot. Default is half block size'
  type: long?
  inputBinding:
    prefix: -itemsPerSlot
- id: in_no_check_sort
  doc: "- Don't check sorting order of in.tab"
  type: boolean?
  inputBinding:
    prefix: -noCheckSort
- id: in_in_dot_bed
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- crTreeIndexBed
