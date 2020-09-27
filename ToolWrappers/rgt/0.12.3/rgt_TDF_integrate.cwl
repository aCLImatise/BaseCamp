class: CommandLineTool
id: rgt_TDF_integrate.cwl
inputs:
- id: in_path
  doc: Define the path of the project.
  type: boolean
  inputBinding:
    prefix: -path
- id: in_exp
  doc: Include expression score for ranking.
  type: boolean
  inputBinding:
    prefix: -exp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rgt-TDF
- integrate
