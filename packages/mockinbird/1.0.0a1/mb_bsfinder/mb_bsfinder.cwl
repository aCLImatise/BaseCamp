class: CommandLineTool
id: ../../../mb_bsfinder.cwl
inputs:
- id: in_threshold
  doc: set maximum p-value for site selection
  type: string
  inputBinding:
    prefix: --threshold
- id: in_min_cov
  doc: set minimum coverage
  type: long
  inputBinding:
    prefix: --mincov
- id: in_reference
  doc: set default reference nucleotide
  type: string
  inputBinding:
    prefix: --reference
- id: in_mutation
  doc: set default mutation nucleotide
  type: string
  inputBinding:
    prefix: --mutation
- id: in_verbose
  doc: verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mb-bsfinder
