class: CommandLineTool
id: ../../../summarize_flags.py.cwl
inputs:
- id: flags
  doc: Flag file.
  type: string
  inputBinding:
    prefix: --flags
- id: id
  doc: Name of the column with unique identifiers.
  type: string
  inputBinding:
    prefix: --ID
- id: out_summary
  doc: Output file for Summary.
  type: string
  inputBinding:
    prefix: --outSummary
outputs: []
cwlVersion: v1.1
baseCommand:
- summarize_flags.py
