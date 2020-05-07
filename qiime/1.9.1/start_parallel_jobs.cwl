class: CommandLineTool
id: start_parallel_jobs.py.cwl
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
outputs: []
cwlVersion: v1.1
baseCommand:
- start_parallel_jobs.py
