class: CommandLineTool
id: sort_bed_float128.cwl
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
outputs: []
cwlVersion: v1.1
baseCommand:
- sort-bed-float128
