class: CommandLineTool
id: AMUSED.cwl
inputs:
- id: ng
  doc: = no inserting gaps
  type: boolean
  inputBinding:
    prefix: -ng
- id: nu
  doc: = no changing to upper case before scan (non ATGC bases are discarded)
  type: boolean
  inputBinding:
    prefix: -nu
- id: ds
  doc: = double stranded (reverse complement sequences too)
  type: boolean
  inputBinding:
    prefix: -ds
- id: ns
  doc: = don't sort
  type: boolean
  inputBinding:
    prefix: -ns
- id: do
  doc: '= descriptive output: lots of intermediate values also output (but many columns)'
  type: boolean
  inputBinding:
    prefix: -do
- id: bc
  doc: = add lines to output for base content
  type: boolean
  inputBinding:
    prefix: -bc
- id: n_sz
  doc: = don't calculate super Zs
  type: boolean
  inputBinding:
    prefix: -nsz
outputs: []
cwlVersion: v1.1
baseCommand:
- AMUSED
