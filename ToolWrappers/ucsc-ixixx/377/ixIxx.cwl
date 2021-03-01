class: CommandLineTool
id: ixIxx.cwl
inputs:
- id: in_prefix_size
  doc: Size of prefix to index on in ixx.  Default is 5.
  type: long?
  inputBinding:
    prefix: -prefixSize
- id: in_binsize
  doc: Size of bins in ixx.  Default is 64k.
  type: long?
  inputBinding:
    prefix: -binSize
- id: in_in_dot_text
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_out_do_tix
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ixIxx
