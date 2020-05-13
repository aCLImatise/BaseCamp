class: CommandLineTool
id: phyluce_align_get_incomplete_matrix_estimates.cwl
inputs:
- id: db
  doc: The probe.matches.sqlite database to query
  type: string
  inputBinding:
    prefix: --db
- id: min
  doc: The minimum of the range to evaluate
  type: long
  inputBinding:
    prefix: --min
- id: max
  doc: The maximum of the range to evaluate
  type: long
  inputBinding:
    prefix: --max
- id: step
  doc: The step of the range to evaluate
  type: string
  inputBinding:
    prefix: --step
- id: exclude
  doc: Taxa to exclude
  type: string[]
  inputBinding:
    prefix: --exclude
- id: include
  doc: Taxa to include
  type: string[]
  inputBinding:
    prefix: --include
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_align_get_incomplete_matrix_estimates
