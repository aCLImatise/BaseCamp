class: CommandLineTool
id: proteinortho.cwl
inputs:
- id: step
  doc: =1
  type: boolean
  inputBinding:
    prefix: -step
- id: jobs
  doc: =1/2 -step=2 on PC one and
  type: boolean
  inputBinding:
    prefix: -jobs
- id: jobs
  doc: =2/2 -step=2 on PC two
  type: boolean
  inputBinding:
    prefix: -jobs
- id: step
  doc: =3 to finalize
  type: boolean
  inputBinding:
    prefix: -step
outputs: []
cwlVersion: v1.1
baseCommand:
- proteinortho
