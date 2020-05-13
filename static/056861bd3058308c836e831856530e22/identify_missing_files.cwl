class: CommandLineTool
id: identify_missing_files.py.cwl
inputs:
- id: expected_out_fp
  doc: the list of expected output files [REQUIRED]
  type: string
  inputBinding:
    prefix: --expected_out_fp
outputs: []
cwlVersion: v1.1
baseCommand:
- identify_missing_files.py
