class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/singularity_check.cwl
inputs:
- id: low
  doc: 'Specify low threshold (all checks, default) '
  type: boolean
  inputBinding:
    prefix: --low
- id: med
  doc: Perform medium and high checks
  type: boolean
  inputBinding:
    prefix: --med
- id: high
  doc: Perform only checks at level high
  type: boolean
  inputBinding:
    prefix: --high
- id: tag
  doc: 'tag to filter checks. default is "default"                       Available:
    default, security, docker, clean'
  type: boolean
  inputBinding:
    prefix: --tag
- id: singularity
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- singularity
- check
