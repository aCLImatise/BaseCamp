class: CommandLineTool
id: phyluce_align_get_incomplete_matrix_estimates.cwl
inputs:
- id: in_db
  doc: The probe.matches.sqlite database to query
  type: string
  inputBinding:
    prefix: --db
- id: in_min
  doc: The minimum of the range to evaluate
  type: long
  inputBinding:
    prefix: --min
- id: in_max
  doc: The maximum of the range to evaluate
  type: long
  inputBinding:
    prefix: --max
- id: in_step
  doc: The step of the range to evaluate
  type: string
  inputBinding:
    prefix: --step
- id: in_exclude
  doc: Taxa to exclude
  type: string[]
  inputBinding:
    prefix: --exclude
- id: in_include
  doc: "Taxa to include\n"
  type: string[]
  inputBinding:
    prefix: --include
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- phyluce_align_get_incomplete_matrix_estimates
