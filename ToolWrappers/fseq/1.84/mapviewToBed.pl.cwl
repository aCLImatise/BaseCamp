class: CommandLineTool
id: mapviewToBed.pl.cwl
inputs:
- id: in_min_qual
  doc: = Exclude alignments with <= this mapping quality score.
  type: string
  inputBinding:
    position: 0
- id: in_max_hits
  doc: = Exclude alignments with > this number of hits.
  type: string
  inputBinding:
    position: 1
- id: in_file
  doc: = Mapview file to convert.
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mapviewToBed.pl
