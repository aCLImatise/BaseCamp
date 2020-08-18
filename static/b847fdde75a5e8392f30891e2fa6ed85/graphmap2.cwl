class: CommandLineTool
id: ../../../graphmap2.cwl
inputs:
- id: tool
  doc: 'STR   Specifies the tool to run: align - the entire GraphMap pipeline. owler
    - Overlapping With Long Erroneous Reads.'
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- graphmap2
