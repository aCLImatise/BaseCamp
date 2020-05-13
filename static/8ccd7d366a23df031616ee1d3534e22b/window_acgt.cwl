class: CommandLineTool
id: window_acgt.cwl
inputs:
- id: window_start
  doc: "window-len  A's C's G's T's #other %GC"
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- window-acgt
