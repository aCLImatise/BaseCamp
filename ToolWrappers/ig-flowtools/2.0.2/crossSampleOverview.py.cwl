class: CommandLineTool
id: ../../../crossSampleOverview.py.cwl
inputs:
- id: in_m
  doc: ''
  type: string
  inputBinding:
    prefix: -m
- id: in_file_location_summary
  doc: File location for the summary statistics from
  type: File
  inputBinding:
    prefix: -i
- id: in_file_location_html
  doc: File location for the HTML output file.
  type: File
  inputBinding:
    prefix: -o
- id: in_s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
- id: in_var_4
  doc: ''
  type: string
  inputBinding:
    prefix: -I
- id: in_cs_overview
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_file_location_html
  doc: File location for the HTML output file.
  type: File
  outputBinding:
    glob: $(inputs.in_file_location_html)
cwlVersion: v1.1
baseCommand:
- crossSampleOverview.py
