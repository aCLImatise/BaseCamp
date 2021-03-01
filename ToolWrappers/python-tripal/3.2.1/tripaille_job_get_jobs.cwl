class: CommandLineTool
id: tripaille_job_get_jobs.cwl
inputs:
- id: in_job_id
  doc: job id
  type: long?
  inputBinding:
    prefix: --job_id
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- tripaille
- job
- get_jobs
