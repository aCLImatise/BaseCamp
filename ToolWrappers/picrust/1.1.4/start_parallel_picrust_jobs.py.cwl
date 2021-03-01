class: CommandLineTool
id: start_parallel_picrust_jobs.py.cwl
inputs:
- id: in_verbose
  doc: "Print information during execution -- useful for\ndebugging [default: False]"
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_make_jobs
  doc: 'make the job files [default: none]'
  type: boolean?
  inputBinding:
    prefix: --make_jobs
- id: in_submit_jobs
  doc: 'submit the job files [default: none]'
  type: boolean?
  inputBinding:
    prefix: --submit_jobs
- id: in_delay
  doc: "Number of seconds to pause between launching each job\n[default: 0]"
  type: long?
  inputBinding:
    prefix: --delay
- id: in_num_jobs
  doc: "Number of jobs to group commands into. [default: 4]\n"
  type: long?
  inputBinding:
    prefix: --num_jobs
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- start_parallel_picrust_jobs.py
