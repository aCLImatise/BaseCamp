class: CommandLineTool
id: start_parallel_jobs_torque.py.cwl
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
- id: queue
  doc: 'name of queue to submit to [default: friendlyq]'
  type: string
  inputBinding:
    prefix: --queue
- id: job_dir
  doc: 'directory to store the jobs [default: jobs/]'
  type: string
  inputBinding:
    prefix: --job_dir
- id: max_wall_time
  doc: 'maximum time in hours the job will run for [default: 72]'
  type: long
  inputBinding:
    prefix: --max_walltime
- id: cpus
  doc: number of CPUs to use [default:1]
  type: string
  inputBinding:
    prefix: --cpus
- id: nodes
  doc: number of nodes to use [default:1]
  type: string
  inputBinding:
    prefix: --nodes
outputs: []
cwlVersion: v1.1
baseCommand:
- start_parallel_jobs_torque.py
