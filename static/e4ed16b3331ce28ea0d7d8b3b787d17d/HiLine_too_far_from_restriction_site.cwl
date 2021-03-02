class: CommandLineTool
id: HiLine_too_far_from_restriction_site.cwl
inputs:
- id: in_no_sort
  doc: Sort and index output. Default=sort
  type: boolean?
  inputBinding:
    prefix: --no-sort
- id: in_output
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- HiLine
- too-far-from-restriction-site
