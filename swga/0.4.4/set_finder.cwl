class: CommandLineTool
id: set_finder.cwl
inputs:
- id: none
  doc: No ordering (same order as in the file).
  type: string
  inputBinding:
    position: 0
- id: reverse
  doc: Reverse order as in the file.
  type: string
  inputBinding:
    position: 1
- id: default
  doc: One of the two below, depending on weightedness.
  type: string
  inputBinding:
    position: 2
- id: unweighted_coloring
  doc: Coloring method efficient for unweighted graphs.
  type: string
  inputBinding:
    position: 3
- id: weighted_coloring
  doc: Coloring method efficient for weighted graphs.
  type: string
  inputBinding:
    position: 4
- id: degree
  doc: Order by ascending degree.
  type: string
  inputBinding:
    position: 5
- id: random
  doc: Random order.
  type: string
  inputBinding:
    position: 6
- id: reorder
  doc: Reorder with function F.  See below for details.
  type: string
  inputBinding:
    prefix: --reorder
- id: q
  doc: --quiet        Suppresses progress output.  Specifying -q twice suppresses
    all output except the actual result.
  type: boolean
  inputBinding:
    prefix: -q
- id: output
  doc: Output results to file F.
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- set_finder
