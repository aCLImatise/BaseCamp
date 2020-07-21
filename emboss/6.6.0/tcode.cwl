class: CommandLineTool
id: ../../../tcode.cwl
inputs:
- id: window
  doc: integer    [200] This is the number of nucleotide bases over which the TESTCODE
    statistic will be performed each time. The window will then slide along the sequence,
    covering the same number of bases each time. (Integer 200 or more)
  type: boolean
  inputBinding:
    prefix: -window
outputs: []
cwlVersion: v1.1
baseCommand:
- tcode
