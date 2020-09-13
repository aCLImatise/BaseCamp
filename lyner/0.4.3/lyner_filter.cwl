class: CommandLineTool
id: ../../../lyner_filter.cwl
inputs:
- id: in_sum
  doc: "Drops rows with sum smaller than or equal to\ngiven value."
  type: long
  inputBinding:
    prefix: --sum
- id: in_zeros
  doc: Drop rows with up to the given amount of
  type: long
  inputBinding:
    prefix: --zeros
- id: in_drop_na
  doc: Drop rows with NA/nan/empty entries.
  type: boolean
  inputBinding:
    prefix: --drop-na
- id: in_drop_duplicates
  doc: Drop duplicate rows.
  type: boolean
  inputBinding:
    prefix: --drop-duplicates
- id: in_prefix
  doc: ''
  type: string
  inputBinding:
    prefix: --prefix
- id: in_suffix
  doc: ''
  type: string
  inputBinding:
    prefix: --suffix
- id: in_variance_relative
  doc: Keep the top n% most variant rows, drop the
  type: double
  inputBinding:
    prefix: --variance-relative
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- lyner
- filter
