class: CommandLineTool
id: start_parallel_jobs_sc.py.cwl
inputs:
- id: verbose
  doc: 'Print information during execution -- useful for debugging [default: False]'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: make_jobs
  doc: 'make the job files [default: none]'
  type: boolean
  inputBinding:
    prefix: --make_jobs
- id: submit_jobs
  doc: 'submit the job files [default: none]'
  type: boolean
  inputBinding:
    prefix: --submit_jobs
- id: queue_name
  doc: 'the queue to submit jobs to [default: all.q]'
  type: string
  inputBinding:
    prefix: --queue_name
outputs: []
cwlVersion: v1.1
baseCommand:
- start_parallel_jobs_sc.py
