class: CommandLineTool
id: cgmlst_dists.cwl
inputs:
- id: v
  doc: Print version and exit
  type: boolean
  inputBinding:
    prefix: -v
- id: q
  doc: Quiet mode; do not print progress information
  type: boolean
  inputBinding:
    prefix: -q
- id: c
  doc: Use comma instead of tab in output
  type: boolean
  inputBinding:
    prefix: -c
- id: m
  doc: 'Output: 1=lower-tri 2=upper-tri 3=full [3]'
  type: string
  inputBinding:
    prefix: -m
outputs: []
cwlVersion: v1.1
baseCommand:
- cgmlst-dists
