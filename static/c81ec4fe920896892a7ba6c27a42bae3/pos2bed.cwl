class: CommandLineTool
id: ../../../pos2bed.pl.cwl
inputs:
- id: output_to_file
  doc: (Output to file)
  type: File
  inputBinding:
    prefix: -o
- id: bed
  doc: (Output to file with same name as input with *.bed extension)
  type: boolean
  inputBinding:
    prefix: -bed
- id: track
  doc: (Include track line with name for uploading to UCSC Genome Browser)
  type: string
  inputBinding:
    prefix: -track
- id: set_th_column
  doc: (Set 5th column to the value 1 instead of value in 6th column of pos file)
  type: boolean
  inputBinding:
    prefix: '-5'
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
- id: peak_slash_pos_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- pos2bed.pl
