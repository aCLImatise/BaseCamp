class: CommandLineTool
id: dnadiff.cwl
inputs:
- id: or
  doc: dnadiff  [options]  -d <delta file>
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- dnadiff
