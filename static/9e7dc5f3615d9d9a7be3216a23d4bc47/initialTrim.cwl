class: CommandLineTool
id: initialTrim.cwl
inputs:
- id: in_find_quality_points
  doc: Find quality trim points using 'quality' as the base.
  type: string?
  inputBinding:
    prefix: -q
- id: in_log
  doc: Report the iid, original trim and new quality trim
  type: string?
  inputBinding:
    prefix: -log
- id: in_frg
  doc: Operate on this gkpStore
  type: string?
  inputBinding:
    prefix: -frg
- id: in_be_uselessly_verbose
  doc: Be uselessly verbose (for debugging)
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_replace
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -replace
- id: in_update
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -update
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- initialTrim
