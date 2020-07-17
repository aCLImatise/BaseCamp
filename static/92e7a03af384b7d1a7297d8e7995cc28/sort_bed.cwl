class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/sort_bed.cwl
inputs:
- id: tmpdir
  doc: useful only with --max-mem.
  type: string
  inputBinding:
    prefix: --tmpdir
- id: unique
  doc: be used to print only unique BED elements (similar to 'sort -u'). Cannot be
    used with --duplicates.
  type: string
  inputBinding:
    prefix: --unique
- id: duplicates
  doc: be used to print only duplicated or repeated elements (similar to 'uniq -d').
    Cannot be used with --unique.
  type: string
  inputBinding:
    prefix: --duplicates
- id: check_sort
  doc: ''
  type: boolean
  inputBinding:
    prefix: --check-sort
- id: max_mem
  doc: ''
  type: string
  inputBinding:
    prefix: --max-mem
- id: file_one_dot_bed
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: file_two_dot_bed
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- sort-bed
