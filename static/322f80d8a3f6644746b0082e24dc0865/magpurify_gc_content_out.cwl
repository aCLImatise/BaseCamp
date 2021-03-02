class: CommandLineTool
id: magpurify_gc_content_out.cwl
inputs:
- id: in_weighted_mean
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --weighted-mean
- id: in_cut_off
  doc: ''
  type: string?
  inputBinding:
    prefix: --cutoff
- id: in_mag_purify
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_gc_content
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_fna
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_out
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- magpurify
- gc-content
- out
