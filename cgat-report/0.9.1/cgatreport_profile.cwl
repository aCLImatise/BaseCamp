class: CommandLineTool
id: cgatreport_profile.cwl
inputs:
- id: section
  doc: only examine certain sections [default=[]]
  type: string
  inputBinding:
    prefix: --section
- id: time
  doc: time to show [default=seconds]
  type: string
  inputBinding:
    prefix: --time
- id: filter
  doc: apply filter to output [default=all]
  type: string
  inputBinding:
    prefix: --filter
outputs: []
cwlVersion: v1.1
baseCommand:
- cgatreport-profile
