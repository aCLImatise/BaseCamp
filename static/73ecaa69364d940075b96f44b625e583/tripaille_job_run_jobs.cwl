class: CommandLineTool
id: tripaille_job_run_jobs.cwl
inputs:
- id: in_wait
  doc: 'Wait for job completion  [default: True]'
  type: boolean?
  inputBinding:
    prefix: --wait
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- tripaille
- job
- run_jobs
