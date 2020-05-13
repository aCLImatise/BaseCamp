class: CommandLineTool
id: sbg_cwl_runner.cwl
inputs:
- id: outdir
  doc: ''
  type: string
  inputBinding:
    prefix: --outdir
- id: quiet
  doc: ''
  type: boolean
  inputBinding:
    prefix: --quiet
- id: api_profile
  doc: ''
  type: string
  inputBinding:
    prefix: --api-profile
- id: project
  doc: ''
  type: string
  inputBinding:
    prefix: --project
- id: poll_interval
  doc: ''
  type: string
  inputBinding:
    prefix: --poll-interval
outputs: []
cwlVersion: v1.1
baseCommand:
- sbg-cwl-runner
