class: CommandLineTool
id: nextflow.bak_drop.cwl
inputs:
- id: in_delete_repository_false
  doc: "Delete the repository without taking care of local changes\nDefault: false"
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_drop
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_name
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_of
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_the
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_project
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_to
  doc: ''
  type: string
  inputBinding:
    position: 5
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
- drop
