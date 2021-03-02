class: CommandLineTool
id: zipgrep.cwl
inputs:
- id: in_egrep_options
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_pattern
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_zip_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_members_dot_dot_dot
  doc: ''
  type: string?
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/unzip:6.0
cwlVersion: v1.1
baseCommand:
- zipgrep
