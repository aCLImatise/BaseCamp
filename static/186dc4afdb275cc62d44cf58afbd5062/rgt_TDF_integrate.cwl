class: CommandLineTool
id: rgt_TDF_integrate.cwl
inputs:
- id: path
  doc: Define the path of the project.
  type: boolean
  inputBinding:
    prefix: -path
- id: exp
  doc: Include expression score for ranking.
  type: boolean
  inputBinding:
    prefix: -exp
outputs: []
cwlVersion: v1.1
baseCommand:
- rgt-TDF
- integrate
