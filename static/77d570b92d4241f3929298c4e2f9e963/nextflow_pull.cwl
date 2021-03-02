class: CommandLineTool
id: nextflow_pull.cwl
inputs:
- id: in_all
  doc: "Update all downloaded projects\nDefault: false"
  type: boolean?
  inputBinding:
    prefix: -all
- id: in_hub
  doc: Service hub where the project is hosted
  type: boolean?
  inputBinding:
    prefix: -hub
- id: in_revision
  doc: "Revision of the project to run (either a git branch, tag or commit SHA\nnumber)"
  type: boolean?
  inputBinding:
    prefix: -revision
- id: in_user
  doc: "Private repository user name\n"
  type: boolean?
  inputBinding:
    prefix: -user
- id: in_pull
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
- id: in_or
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_repository
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_url
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_to
  doc: ''
  type: string
  inputBinding:
    position: 6
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- nextflow
- pull
