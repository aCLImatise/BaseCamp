class: CommandLineTool
id: toil_wdl_runner.cwl
inputs:
- id: in_dev_mode
  doc: 1. Creates "AST.out", which holds the printed AST and
  type: long
  inputBinding:
    prefix: --dev_mode
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_job_store
  doc: ''
  type: string
  inputBinding:
    prefix: --jobStore
- id: in_wdl_file
  doc: A WDL workflow file.
  type: string
  inputBinding:
    position: 0
- id: in_secondary_file
  doc: A secondary data file (json).
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- toil-wdl-runner
