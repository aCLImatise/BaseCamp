class: CommandLineTool
id: sldout.cwl
inputs:
- id: in_csv_vertical_line_txt
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_filename_dots_ld
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/proteowizard:3.0.9992
cwlVersion: v1.1
baseCommand:
- sldout
