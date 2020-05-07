class: CommandLineTool
id: slncky.cwl
inputs:
- id: bed_file
  doc: bed12 file of transcripts
  type: string
  inputBinding:
    position: 0
- id: assembly
  doc: assembly
  type: string
  inputBinding:
    position: 1
- id: out_prefix
  doc: out_prefix
  type: string
  inputBinding:
    position: 2
- id: web
  doc: flag for if you want slncky to create a website visualizing results
  type: boolean
  inputBinding:
    prefix: --web
outputs: []
cwlVersion: v1.1
baseCommand:
- slncky
