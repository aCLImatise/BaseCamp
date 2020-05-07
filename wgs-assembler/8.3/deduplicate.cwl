class: CommandLineTool
id: deduplicate.cwl
inputs:
- id: erate
  doc: filter overlaps above this fraction error; default 0.015 (== 1.5% error)
  type: string
  inputBinding:
    prefix: -erate
- id: summary
  doc: write a summary of the fixes to S
  type: string
  inputBinding:
    prefix: -summary
- id: report
  doc: write a detailed report of the fixes to R
  type: string
  inputBinding:
    prefix: -report
outputs: []
cwlVersion: v1.1
baseCommand:
- deduplicate
