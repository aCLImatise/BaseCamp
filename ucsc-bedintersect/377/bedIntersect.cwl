#!/usr/bin/env cwl-runner

baseCommand:
- bedIntersect
class: CommandLineTool
cwlVersion: v1.0
id: bedintersect
inputs:
- doc: output all of a if any of it is hit by b
  id: a_hit_any
  inputBinding:
    prefix: -aHitAny
  type: boolean
- doc: =0.N  min coverage of b to output match (or if -aHitAny, of a). Not applied
    to 0-length items.  Default 0.000010
  id: min_coverage
  inputBinding:
    prefix: -minCoverage
  type: boolean
- doc: output score from b.bed (must be at least 5 field bed)
  id: b_score
  inputBinding:
    prefix: -bScore
  type: boolean
- doc: chop input at tabs not spaces
  id: tab
  inputBinding:
    prefix: -tab
  type: boolean
- doc: Don't discard 0-length items of a or b (e.g. point insertions)
  id: allow_start_equal_end
  inputBinding:
    prefix: -allowStartEqualEnd
  type: boolean
