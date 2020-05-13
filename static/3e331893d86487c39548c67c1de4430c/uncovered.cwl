class: CommandLineTool
id: uncovered.cwl
inputs:
- id: sequence_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: coords
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: nowrap
  doc: Use the actual input coordinates without any wraparound that would be needed
    by a circular genome.  Without this option, the output sequence is the shorter
    of the two ways around the circle.  Use the -d option to specify direction explicitly.
  type: boolean
  inputBinding:
    prefix: --nowrap
outputs: []
cwlVersion: v1.1
baseCommand:
- uncovered
