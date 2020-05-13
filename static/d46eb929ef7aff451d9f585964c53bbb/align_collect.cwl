class: CommandLineTool
id: align_collect.py.cwl
inputs:
- id: input
  doc: The list of samtools stats file to process
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- align_collect.py
