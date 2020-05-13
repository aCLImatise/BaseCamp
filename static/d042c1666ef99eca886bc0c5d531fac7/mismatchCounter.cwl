class: CommandLineTool
id: mismatchCounter.cwl
inputs:
- id: a
  doc: ':     annotate each match with the percent error, write to stdout'
  type: boolean
  inputBinding:
    prefix: -a
- id: e
  doc: ':     histogram of the error rate of each match'
  type: boolean
  inputBinding:
    prefix: -e
- id: c
  doc: ':     check that the next base on each side is a mismatch'
  type: boolean
  inputBinding:
    prefix: -c
outputs: []
cwlVersion: v1.1
baseCommand:
- mismatchCounter
