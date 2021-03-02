class: CommandLineTool
id: nextflow_clone.cwl
inputs:
- id: in_hub
  doc: Service hub where the project is hosted
  type: boolean?
  inputBinding:
    prefix: -hub
- id: in_revision_clone_it
  doc: Revision to clone - It can be a git branch, tag or revision number
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_user
  doc: "Private repository user name\n"
  type: boolean?
  inputBinding:
    prefix: -user
- id: in_clone
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
hints: []
cwlVersion: v1.1
baseCommand:
- nextflow
- clone
