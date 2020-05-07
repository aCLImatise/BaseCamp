class: CommandLineTool
id: start_parallel_jobs_slurm.py.cwl
inputs:
- id: verbose
  doc: 'Print information during execution -- useful for debugging [default: False]'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: make_jobs
  doc: 'make the job files [default: False]'
  type: boolean
  inputBinding:
    prefix: --make_jobs
- id: submit_jobs
  doc: 'submit the job files [default: False]'
  type: boolean
  inputBinding:
    prefix: --submit_jobs
- id: queue
  doc: "name of queue to submit to [default: slurm's default]"
  type: string
  inputBinding:
    prefix: --queue
- id: mem_per_cpu
  doc: "megabytes of memory to request per CPU [default: slurm's default]"
  type: string
  inputBinding:
    prefix: --mem_per_cpu
- id: job_dir
  doc: 'directory to store the jobs [default: jobs/]'
  type: string
  inputBinding:
    prefix: --job_dir
- id: time
  doc: "run time limit of the jobs in dd-hh:mm:ss format [default: slurm's default]"
  type: string
  inputBinding:
    prefix: --time
outputs: []
cwlVersion: v1.1
baseCommand:
- start_parallel_jobs_slurm.py
