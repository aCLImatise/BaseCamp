class: CommandLineTool
id: sbg_cwl_runner_JOB.cwl
inputs:
- id: workflow
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: job
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: outdir
  doc: 'Directory to put results in [default: ./]'
  type: string
  inputBinding:
    prefix: --outdir
- id: quiet
  doc: Suppress logging messages
  type: boolean
  inputBinding:
    prefix: --quiet
- id: api_profile
  doc: 'API profile name [default: default]'
  type: string
  inputBinding:
    prefix: --api-profile
- id: project
  doc: 'Project to run tasks in [default: default-sbg-cwl-runner-project]'
  type: string
  inputBinding:
    prefix: --project
- id: poll_interval
  doc: 'Polling interval to check for job status (in min) [default: 1]'
  type: string
  inputBinding:
    prefix: --poll-interval
outputs: []
cwlVersion: v1.1
baseCommand:
- sbg-cwl-runner
- JOB
