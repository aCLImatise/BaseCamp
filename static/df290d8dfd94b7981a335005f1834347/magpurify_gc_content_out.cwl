class: CommandLineTool
id: magpurify_gc_content_out.cwl
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
outputs: []
cwlVersion: v1.1
baseCommand:
- magpurify
- gc-content
- out
