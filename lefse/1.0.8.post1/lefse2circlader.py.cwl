class: CommandLineTool
id: ../../../lefse2circlader.py.cwl
inputs:
- id: in_with_label
  doc: with label
  type: string
  inputBinding:
    prefix: -l
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- lefse2circlader.py
