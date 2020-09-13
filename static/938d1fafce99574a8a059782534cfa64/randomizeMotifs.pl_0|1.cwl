class: CommandLineTool
id: ../../../randomizeMotifs.pl_0|1.cwl
inputs:
- id: in_column_randomized_inverted
  doc: ''
  type: boolean
  inputBinding:
    prefix: -ColumnRandomized-Inverted
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- randomizeMotifs.pl
- 0|1
