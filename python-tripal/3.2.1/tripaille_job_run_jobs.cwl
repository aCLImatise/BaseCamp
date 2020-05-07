class: CommandLineTool
id: tripaille_job_run_jobs.cwl
inputs:
- id: wait
  doc: 'Wait for job completion  [default: True]'
  type: boolean
  inputBinding:
    prefix: --wait
outputs: []
cwlVersion: v1.1
baseCommand:
- tripaille
- job
- run_jobs
