class: CommandLineTool
id: ../../../vcf_concat.cwl
inputs:
- id: check_columns
  doc: Do not concatenate, only check if the columns agree.
  type: boolean
  inputBinding:
    prefix: --check-columns
- id: files
  doc: Read the list of files from a file.
  type: File
  inputBinding:
    prefix: --files
- id: pad_missing
  doc: Write '.' in place of missing columns. Useful for joining chrY with the rest.
  type: boolean
  inputBinding:
    prefix: --pad-missing
- id: merge_sort
  doc: Allow small overlaps in N consecutive files.
  type: long
  inputBinding:
    prefix: --merge-sort
- id: a_dot_vcf_do_tgz
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: bdotvcfdotgz
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: cdotvcfdotgz
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- vcf-concat
