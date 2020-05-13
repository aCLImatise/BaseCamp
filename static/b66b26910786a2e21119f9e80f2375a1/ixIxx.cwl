class: CommandLineTool
id: ixIxx.cwl
inputs:
- id: in_text
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_ix
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_ix_x
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: prefix_size
  doc: Size of prefix to index on in ixx.  Default is 5.
  type: string
  inputBinding:
    prefix: -prefixSize
- id: binsize
  doc: Size of bins in ixx.  Default is 64k.
  type: string
  inputBinding:
    prefix: -binSize
outputs: []
cwlVersion: v1.1
baseCommand:
- ixIxx
