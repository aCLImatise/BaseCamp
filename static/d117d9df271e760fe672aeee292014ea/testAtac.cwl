class: CommandLineTool
id: testAtac.cwl
inputs:
- id: i
  doc: print a warning if a match is below this percent identity
  type: boolean
  inputBinding:
    prefix: -i
outputs: []
cwlVersion: v1.1
baseCommand:
- testAtac
