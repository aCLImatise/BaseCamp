class: CommandLineTool
id: sga_mergeDriver.pl.cwl
inputs:
- id: files
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: threads
  doc: use N threads for the merge processes
  type: string
  inputBinding:
    prefix: --threads
- id: bin
  doc: 'use PROG as the sga executable [default: sga]'
  type: string
  inputBinding:
    prefix: --bin
outputs: []
cwlVersion: v1.1
baseCommand:
- sga-mergeDriver.pl
