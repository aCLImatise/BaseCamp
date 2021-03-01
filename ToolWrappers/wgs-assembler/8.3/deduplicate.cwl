class: CommandLineTool
id: deduplicate.cwl
inputs:
- id: in_erate
  doc: filter overlaps above this fraction error; default 0.015 (== 1.5% error)
  type: double?
  inputBinding:
    prefix: -erate
- id: in_summary
  doc: write a summary of the fixes to S
  type: string?
  inputBinding:
    prefix: -summary
- id: in_report
  doc: write a detailed report of the fixes to R
  type: string?
  inputBinding:
    prefix: -report
- id: in_ovs
  doc: ''
  type: string?
  inputBinding:
    prefix: -ovs
- id: in_gkp
  doc: ''
  type: string?
  inputBinding:
    prefix: -gkp
- id: in_one
  doc: ''
  type: boolean?
  inputBinding:
    prefix: '-1'
- id: in_opts
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- deduplicate
