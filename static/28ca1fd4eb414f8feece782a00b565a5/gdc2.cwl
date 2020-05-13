class: CommandLineTool
id: gdc2.cwl
inputs:
- id: additionally
  doc: for insertions/deletions (indels) of length 2 (default 1 only)
  type: string
  inputBinding:
    prefix: '- additionally'
- id: set
  doc: of working threads to X (minimum is 2, default is 4)
  type: string
  inputBinding:
    prefix: '- set'
- id: set
  doc: limit in MB that program can allocate to X (default is 1024MB)
  type: string
  inputBinding:
    prefix: '- set'
- id: set
  doc: 'degree (defining percentage of sequences used in the second level compression)
    to X, where X is an integer number in range [1-10] (default is 10); ; X*10 percent
    of sequences will be used in the second level compression. '
  type: string
  inputBinding:
    prefix: '- set'
outputs: []
cwlVersion: v1.1
baseCommand:
- gdc2
