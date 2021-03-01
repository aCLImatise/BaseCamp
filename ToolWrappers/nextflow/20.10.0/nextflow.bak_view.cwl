class: CommandLineTool
id: nextflow.bak_view.cwl
inputs:
- id: in_list_repository_contentdefault
  doc: "List repository content\nDefault: false"
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_hide_header_linedefault
  doc: "Hide header line\nDefault: false\n"
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_view
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_project
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_name
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/nextflow:20.10.0--hecda079_0
cwlVersion: v1.1
baseCommand:
- nextflow.bak
- view
