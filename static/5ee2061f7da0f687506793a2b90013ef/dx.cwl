class: CommandLineTool
id: dx.cwl
inputs:
- id: env_help
  doc: Display help message for overriding environment variables
  type: boolean
  inputBinding:
    prefix: --env-help
outputs: []
cwlVersion: v1.1
baseCommand:
- dx
