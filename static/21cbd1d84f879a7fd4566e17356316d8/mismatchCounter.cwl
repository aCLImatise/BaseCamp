class: CommandLineTool
id: ../../../mismatchCounter.cwl
inputs:
- id: annotate_match_percent
  doc: ':     annotate each match with the percent error, write to stdout'
  type: boolean
  inputBinding:
    prefix: -a
- id: histogram_error_rate
  doc: ':     histogram of the error rate of each match'
  type: boolean
  inputBinding:
    prefix: -e
- id: check_next_base
  doc: ':     check that the next base on each side is a mismatch'
  type: boolean
  inputBinding:
    prefix: -c
- id: h
  doc: ''
  type: string
  inputBinding:
    prefix: -h
outputs: []
cwlVersion: v1.1
baseCommand:
- mismatchCounter
