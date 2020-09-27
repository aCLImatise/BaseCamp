class: CommandLineTool
id: start_parallel_picrust_jobs_sge.py.cwl
inputs:
- id: in_verbose
  doc: "Print information during execution -- useful for\ndebugging [default: False]"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_make_jobs
  doc: 'make the job files [default: none]'
  type: boolean
  inputBinding:
    prefix: --make_jobs
- id: in_submit_jobs
  doc: 'submit the job files [default: none]'
  type: boolean
  inputBinding:
    prefix: --submit_jobs
- id: in_delay
  doc: "Number of seconds to pause between launching each job\n[default: 0]"
  type: long
  inputBinding:
    prefix: --delay
- id: in_queue
  doc: 'name of queue to submit to  [default: none]'
  type: string
  inputBinding:
    prefix: --queue
- id: in_job_dir
  doc: 'directory to store the jobs [default: jobs/]'
  type: Directory
  inputBinding:
    prefix: --job_dir
- id: in_num_jobs
  doc: "Number of jobs to group commands into. [default: 100]\n"
  type: long
  inputBinding:
    prefix: --num_jobs
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- start_parallel_picrust_jobs_sge.py
