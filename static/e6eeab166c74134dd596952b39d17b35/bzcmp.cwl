class: CommandLineTool
id: bzcmp.cwl
inputs:
- id: in_cmp_options
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_file
  doc: ''
  type: File?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bzip2:1.0.8
cwlVersion: v1.1
baseCommand:
- bzcmp
