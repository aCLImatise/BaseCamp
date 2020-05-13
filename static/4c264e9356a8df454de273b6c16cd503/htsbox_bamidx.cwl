class: CommandLineTool
id: htsbox_bamidx.cwl
inputs:
- id: bam_idx
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_bam
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: s
  doc: ''
  type: long
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- htsbox
- bamidx
