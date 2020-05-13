class: CommandLineTool
id: poller.py.cwl
inputs:
- id: check_run_complete_file
  doc: path to file containing a list of files that must exist to declare a run complete
    [REQUIRED]
  type: string
  inputBinding:
    prefix: --check_run_complete_file
outputs: []
cwlVersion: v1.1
baseCommand:
- poller.py
