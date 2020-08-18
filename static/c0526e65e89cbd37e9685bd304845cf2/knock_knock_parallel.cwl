class: CommandLineTool
id: ../../../knock_knock_parallel.cwl
inputs:
- id: group
  doc: ''
  type: string
  inputBinding:
    prefix: --group
- id: conditions
  doc: ''
  type: string
  inputBinding:
    prefix: --conditions
- id: project_directory
  doc: the base directory to store input data, reference annotations, and analysis
    output for a project
  type: string
  inputBinding:
    position: 0
- id: max_procs
  doc: maximum number of samples to process at once
  type: long
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- knock-knock
- parallel
