class: CommandLineTool
id: Metadata_piechart.py_ST_CC.cwl
inputs:
- id: in_l
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_metadata_pie_chart_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_st_cc
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_gnu_vid_report
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gnuvid:2.2--0
cwlVersion: v1.1
baseCommand:
- Metadata_piechart.py
- ST_CC
