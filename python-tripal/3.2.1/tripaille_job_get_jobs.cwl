class: CommandLineTool
id: tripaille_job_get_jobs.cwl
inputs:
- id: job_id
  doc: job id
  type: long
  inputBinding:
    prefix: --job_id
outputs: []
cwlVersion: v1.1
baseCommand:
- tripaille
- job
- get_jobs
