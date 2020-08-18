class: CommandLineTool
id: ../../../makeBigBedMotifTrack.pl.cwl
inputs:
- id: track_name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: motif_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: genome
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- makeBigBedMotifTrack.pl
