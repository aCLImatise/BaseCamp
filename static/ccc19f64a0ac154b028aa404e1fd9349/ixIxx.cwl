class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ixIxx.cwl
inputs:
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
- id: in_dot_text
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_do_tix
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_do_tixx
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- ixIxx
