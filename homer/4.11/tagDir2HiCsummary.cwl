class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/tagDir2HiCsummary.pl.cwl
inputs:
- id: tagdirtwohicfiledotpl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: tag_directory
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- tagDir2HiCsummary.pl
