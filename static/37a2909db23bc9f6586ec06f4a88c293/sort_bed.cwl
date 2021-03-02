class: CommandLineTool
id: sort_bed.cwl
inputs:
- id: in_tmpdir
  doc: useful only with --max-mem.
  type: long?
  inputBinding:
    prefix: --tmpdir
- id: in_unique
  doc: be used to print only unique BED elements (similar to 'sort -u'). Cannot be
    used with --duplicates.
  type: string?
  inputBinding:
    prefix: --unique
- id: in_duplicates
  doc: be used to print only duplicated or repeated elements (similar to 'uniq -d').
    Cannot be used with --unique.
  type: string?
  inputBinding:
    prefix: --duplicates
- id: in_max_mem
  doc: ''
  type: long?
  inputBinding:
    prefix: --max-mem
- id: in_check_sort
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --check-sort
- id: in_file_one_dot_bed
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_file_two_dot_bed
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- sort-bed
