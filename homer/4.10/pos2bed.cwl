class: CommandLineTool
id: pos2bed.pl.cwl
inputs:
- id: float
  doc: '(Allow the 5th column to be a floating point number, default: integer)'
  type: boolean
  inputBinding:
    prefix: -float
- id: color
  doc: (color strands red and blue, will also add a track line to file)
  type: string
  inputBinding:
    prefix: -color
outputs: []
cwlVersion: v1.1
baseCommand:
- pos2bed.pl
