class: CommandLineTool
id: check_sort_order.cwl
inputs:
- id: in_genome
  doc: a genome file of chromosome sizes and order
  type: File?
  inputBinding:
    prefix: --genome
- id: in_path
  doc: 'Options:'
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- check-sort-order
