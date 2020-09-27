class: CommandLineTool
id: multi_qsub.py.cwl
inputs:
- id: in_test
  doc: "Only print each of the qsub commands instead of actually\nrunning the commands.\n"
  type: boolean
  inputBinding:
    prefix: --test
- id: in_job_scripts
  doc: The job script files to submit to the queuing system.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- multi_qsub.py
