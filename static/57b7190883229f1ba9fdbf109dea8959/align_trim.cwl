class: CommandLineTool
id: align_trim.cwl
inputs:
- id: bed_file
  doc: BED file containing the amplicon scheme
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- align_trim
