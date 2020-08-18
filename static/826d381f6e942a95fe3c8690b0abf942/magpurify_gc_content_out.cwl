class: CommandLineTool
id: ../../../magpurify_gc_content_out.cwl
inputs:
- id: cut_off
  doc: ''
  type: string
  inputBinding:
    prefix: --cutoff
- id: weighted_mean
  doc: ''
  type: boolean
  inputBinding:
    prefix: --weighted-mean
- id: mag_purify
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: gc_content
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: fna
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: out
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- magpurify
- gc-content
- out
