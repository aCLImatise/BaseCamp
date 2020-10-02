class: CommandLineTool
id: cgatreport_profile.cwl
inputs:
- id: in_section
  doc: only examine certain sections [default=[]]
  type: string
  inputBinding:
    prefix: --section
- id: in_time
  doc: time to show [default=seconds]
  type: string
  inputBinding:
    prefix: --time
- id: in_filter
  doc: "apply filter to output [default=all]\n"
  type: string
  inputBinding:
    prefix: --filter
- id: in_python
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- cgatreport-profile
