class: CommandLineTool
id: ../../../knock_knock_process.cwl
inputs:
- id: progress
  doc: ''
  type: boolean
  inputBinding:
    prefix: --progress
- id: stages
  doc: ''
  type: string
  inputBinding:
    prefix: --stages
- id: project_directory
  doc: the base directory to store input data, reference annotations, and analysis
    output for a project
  type: string
  inputBinding:
    position: 0
- id: group
  doc: group name
  type: string
  inputBinding:
    position: 1
- id: sample
  doc: sample name
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- knock-knock
- process
