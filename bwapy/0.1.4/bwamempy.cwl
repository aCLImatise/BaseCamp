class: CommandLineTool
id: bwamempy.cwl
inputs:
- id: index
  doc: bwa index base path.
  type: string
  inputBinding:
    position: 0
- id: sequence
  doc: base sequence
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- bwamempy
