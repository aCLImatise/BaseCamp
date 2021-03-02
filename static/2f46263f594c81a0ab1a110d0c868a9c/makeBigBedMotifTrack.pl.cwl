class: CommandLineTool
id: makeBigBedMotifTrack.pl.cwl
inputs:
- id: in_track_name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_motif_file
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_genome
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- makeBigBedMotifTrack.pl
