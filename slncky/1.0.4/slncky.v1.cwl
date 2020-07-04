class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/slncky.v1.0.cwl
inputs:
- id: web
  doc: flag for if you want slncky to create a website visualizing results
  type: boolean
  inputBinding:
    prefix: --web
- id: config
  doc: ''
  type: string
  inputBinding:
    prefix: --config
- id: no_orth_search
  doc: ''
  type: boolean
  inputBinding:
    prefix: --no_orth_search
- id: no_filter
  doc: ''
  type: boolean
  inputBinding:
    prefix: --no_filter
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
outputs: []
cwlVersion: v1.1
baseCommand:
- slncky.v1.0
