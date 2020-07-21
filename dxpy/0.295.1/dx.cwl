class: CommandLineTool
id: ../../../dx.cwl
inputs:
- id: env_help
  doc: Display help message for overriding environment variables
  type: boolean
  inputBinding:
    prefix: --env-help
- id: dna_nexus
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: command_line
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: client
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- dx
