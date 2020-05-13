class: CommandLineTool
id: multi_qsub.py.cwl
inputs:
- id: job_scripts
  doc: The job script files to submit to the queuing system.
  type: string
  inputBinding:
    position: 0
- id: test
  doc: Only print each of the qsub commands instead of actually running the commands.
  type: boolean
  inputBinding:
    prefix: --test
outputs: []
cwlVersion: v1.1
baseCommand:
- multi_qsub.py
