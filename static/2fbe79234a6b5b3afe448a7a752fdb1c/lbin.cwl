class: CommandLineTool
id: lbin.cwl
inputs:
- id: f
  doc: ": [find_only] show results from 'which <command>' after PATH expansion but\
    \ do not run <command>"
  type: boolean
  inputBinding:
    prefix: -f
- id: v
  doc: ": [verbose] show results from 'which <command>' after PATH expansion"
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- lbin
