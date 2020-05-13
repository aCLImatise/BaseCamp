class: CommandLineTool
id: dm_zdump.cwl
inputs:
- id: v
  doc: '/--vebose      : Prints a full description of each timezone.'
  type: boolean
  inputBinding:
    prefix: -v
- id: c
  doc: '/--cutoff YEAR : Cut off verbose output near the start of YEAR.'
  type: boolean
  inputBinding:
    prefix: -c
outputs: []
cwlVersion: v1.1
baseCommand:
- dm_zdump
