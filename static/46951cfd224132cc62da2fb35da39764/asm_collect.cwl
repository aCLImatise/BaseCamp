class: CommandLineTool
id: asm_collect.py.cwl
inputs:
- id: input
  doc: The list of mikado util stats file to process
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- asm_collect.py
