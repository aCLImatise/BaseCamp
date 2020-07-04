class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/gdc2.cwl
inputs:
- id: i_two
  doc: '- additionally look for insertions/deletions (indels) of length 2 (default
    1 only)'
  type: boolean
  inputBinding:
    prefix: -i2
- id: tx
  doc: '- set number of working threads to X (minimum is 2, default is 4)'
  type: boolean
  inputBinding:
    prefix: -tX
- id: mm_x
  doc: '- set memory limit in MB that program can allocate to X (default is 1024MB)'
  type: boolean
  inputBinding:
    prefix: -mmX
- id: lx
  doc: '- set compression degree (defining percentage of sequences used in the second
    level compression) to X, where X is an integer number in range [1-10] (default
    is 10); ; X*10 percent of sequences will be used in the second level compression. '
  type: boolean
  inputBinding:
    prefix: -lX
- id: mode
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: archive_name
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- gdc2
