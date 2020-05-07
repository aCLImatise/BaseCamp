class: CommandLineTool
id: bgenFileInfo.cwl
inputs:
- id: in_bg_en
  doc: ': Input BGEN File'
  type: boolean
  inputBinding:
    prefix: --inBgen
- id: in_sample
  doc: ': Input Sample File'
  type: boolean
  inputBinding:
    prefix: --inSample
outputs: []
cwlVersion: v1.1
baseCommand:
- bgenFileInfo
