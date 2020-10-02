class: CommandLineTool
id: sequana_bam_splitter.cwl
inputs:
- id: in_this
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_bam_slash_sam_slash_cram
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_filter
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_removes
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_unmapped
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_and
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_secondary
  doc: ''
  type: string
  inputBinding:
    position: 6
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sequana_bam_splitter
