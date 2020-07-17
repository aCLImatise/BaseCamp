class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/vcfleftalign.cwl
inputs:
- id: reference
  doc: Use this reference as a basis for realignment.
  type: File
  inputBinding:
    prefix: --reference
- id: window
  doc: Use a window of this many bp when left aligning (150).
  type: string
  inputBinding:
    prefix: --window
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- vcfleftalign
