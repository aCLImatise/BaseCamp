class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/merge_transcript_sets.pl.cwl
inputs:
- id: set_ndot_gtf
  doc: file with gene predictions in gtf format
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- merge_transcript_sets.pl
