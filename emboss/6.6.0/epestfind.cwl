class: CommandLineTool
id: epestfind.cwl
inputs:
- id: window
  doc: integer    [10] Minimal distance between positively charged amino acids. (Integer
    2 or more)
  type: boolean
  inputBinding:
    prefix: -window
- id: order
  doc: selection  [score] Name of the output file which holds the results of the analysis.
    Results may be sorted by length, position and score.
  type: boolean
  inputBinding:
    prefix: -order
outputs: []
cwlVersion: v1.1
baseCommand:
- epestfind
