class: CommandLineTool
id: sbg_cwl_runner.cwl
inputs:
- id: in_outdir
  doc: 'Directory to put results in [default: ./]'
  type: Directory
  inputBinding:
    prefix: --outdir
- id: in_quiet
  doc: Suppress logging messages
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_api_profile
  doc: 'API profile name [default: default]'
  type: string
  inputBinding:
    prefix: --api-profile
- id: in_project
  doc: 'Project to run tasks in [default: default-sbg-cwl-runner-project]'
  type: string
  inputBinding:
    prefix: --project
- id: in_poll_interval
  doc: 'Polling interval to check for job status (in min) [default: 1]'
  type: long
  inputBinding:
    prefix: --poll-interval
- id: in_workflow
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sbg-cwl-runner
