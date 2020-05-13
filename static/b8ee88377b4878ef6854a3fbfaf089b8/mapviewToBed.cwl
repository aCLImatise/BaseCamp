class: CommandLineTool
id: mapviewToBed.pl.cwl
inputs:
- id: min_qual
  doc: = Exclude alignments with <= this mapping quality score.
  type: long
  inputBinding:
    position: 0
- id: max_hits
  doc: = Exclude alignments with > this number of hits.
  type: long
  inputBinding:
    position: 1
- id: file
  doc: = Mapview file to convert.
  type: File
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- mapviewToBed.pl
