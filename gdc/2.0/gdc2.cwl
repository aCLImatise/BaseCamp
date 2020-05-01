#!/usr/bin/env cwl-runner

baseCommand:
- gdc2
class: CommandLineTool
cwlVersion: v1.0
id: gdc2
inputs:
- doc: for insertions/deletions (indels) of length 2 (default 1 only)
  id: additionally
  inputBinding:
    prefix: '- additionally'
  type: string
- doc: of working threads to X (minimum is 2, default is 4)
  id: set
  inputBinding:
    prefix: '- set'
  type: string
- doc: limit in MB that program can allocate to X (default is 1024MB)
  id: set
  inputBinding:
    prefix: '- set'
  type: string
- doc: 'degree (defining percentage of sequences used in the second level compression)
    to X, where X is an integer number in range [1-10] (default is 10); ; X*10 percent
    of sequences will be used in the second level compression. '
  id: set
  inputBinding:
    prefix: '- set'
  type: string
