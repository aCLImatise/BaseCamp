#!/usr/bin/env cwl-runner

baseCommand:
- start_parallel_picrust_jobs_sge.py
class: CommandLineTool
cwlVersion: v1.0
id: start_parallel_picrust_jobs_sge.py
inputs:
- doc: 'Print information during execution -- useful for debugging [default: False]'
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: 'make the job files [default: none]'
  id: make_jobs
  inputBinding:
    prefix: --make_jobs
  type: boolean
- doc: 'submit the job files [default: none]'
  id: submit_jobs
  inputBinding:
    prefix: --submit_jobs
  type: boolean
- doc: 'Number of seconds to pause between launching each job [default: 0]'
  id: delay
  inputBinding:
    prefix: --delay
  type: string
- doc: 'name of queue to submit to  [default: none]'
  id: queue
  inputBinding:
    prefix: --queue
  type: string
- doc: 'directory to store the jobs [default: jobs/]'
  id: job_dir
  inputBinding:
    prefix: --job_dir
  type: string
- doc: 'Number of jobs to group commands into. [default: 100]'
  id: num_jobs
  inputBinding:
    prefix: --num_jobs
  type: string
