class: CommandLineTool
id: summarize.cwl
inputs:
- id: in_background_gc_content
  doc: ': Background GC content'
  type: string
  inputBinding:
    prefix: -g
- id: in__gsc_weighting
  doc: ': Do GSC weighting'
  type: boolean
  inputBinding:
    prefix: -w
- id: in_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: in_alignment
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- summarize
