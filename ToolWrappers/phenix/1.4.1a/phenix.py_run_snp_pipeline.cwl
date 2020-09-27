class: CommandLineTool
id: phenix.py_run_snp_pipeline.cwl
inputs:
- id: in_input
  doc: ''
  type: string
  inputBinding:
    prefix: --input
- id: in_workflow
  doc: ''
  type: string
  inputBinding:
    prefix: --workflow
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- phenix.py
- run_snp_pipeline
