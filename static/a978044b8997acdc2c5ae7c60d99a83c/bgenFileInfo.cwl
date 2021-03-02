class: CommandLineTool
id: bgenFileInfo.cwl
inputs:
- id: in_in_bg_en
  doc: ': Input BGEN File'
  type: boolean?
  inputBinding:
    prefix: --inBgen
- id: in_in_sample
  doc: ': Input Sample File'
  type: boolean?
  inputBinding:
    prefix: --inSample
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bgenFileInfo
