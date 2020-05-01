#!/usr/bin/env cwl-runner

baseCommand:
- set_finder
class: CommandLineTool
cwlVersion: v1.0
id: set_finder
inputs:
- doc: No ordering (same order as in the file).
  id: none
  inputBinding:
    position: 0
  type: string
- doc: Reverse order as in the file.
  id: reverse
  inputBinding:
    position: 1
  type: string
- doc: One of the two below, depending on weightedness.
  id: default
  inputBinding:
    position: 2
  type: string
- doc: Coloring method efficient for unweighted graphs.
  id: unweighted_coloring
  inputBinding:
    position: 3
  type: string
- doc: Coloring method efficient for weighted graphs.
  id: weighted_coloring
  inputBinding:
    position: 4
  type: string
- doc: Order by ascending degree.
  id: degree
  inputBinding:
    position: 5
  type: string
- doc: Random order.
  id: random
  inputBinding:
    position: 6
  type: string
- doc: Reorder with function F.  See below for details.
  id: reorder
  inputBinding:
    prefix: --reorder
  type: string
- doc: --quiet        Suppresses progress output.  Specifying -q twice suppresses
    all output except the actual result.
  id: q
  inputBinding:
    prefix: -q
  type: boolean
- doc: Output results to file F.
  id: output
  inputBinding:
    prefix: --output
  type: string
