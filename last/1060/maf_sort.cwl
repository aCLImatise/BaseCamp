class: CommandLineTool
id: maf_sort.cwl
inputs:
- id: d
  doc: only print duplicate alignments
  type: boolean
  inputBinding:
    prefix: -d
- id: n
  doc: 'sort by the n-th sequence (default: 1)'
  type: boolean
  inputBinding:
    prefix: -n
outputs: []
cwlVersion: v1.1
baseCommand:
- maf-sort
