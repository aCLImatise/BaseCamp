class: CommandLineTool
id: txt2mzml.cwl
inputs:
- id: in_file_in
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_file_out
  doc: ''
  type: string
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
- txt2mzml
