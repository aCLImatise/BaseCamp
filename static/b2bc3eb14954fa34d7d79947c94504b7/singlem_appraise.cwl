class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/singlem_appraise.cwl
inputs:
- id: debug
  doc: ''
  type: boolean
  inputBinding:
    prefix: --debug
- id: quiet
  doc: ''
  type: boolean
  inputBinding:
    prefix: --quiet
- id: full_help
  doc: ''
  type: boolean
  inputBinding:
    prefix: --full_help
outputs: []
cwlVersion: v1.1
baseCommand:
- singlem
- appraise
