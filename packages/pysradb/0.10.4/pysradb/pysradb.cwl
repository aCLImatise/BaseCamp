class: CommandLineTool
id: ../../../pysradb.cwl
inputs:
- id: in_citation
  doc: how to cite
  type: boolean
  inputBinding:
    prefix: --citation
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pysradb
