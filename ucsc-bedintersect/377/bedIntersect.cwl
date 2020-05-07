class: CommandLineTool
id: bedIntersect.cwl
inputs:
- id: a_hit_any
  doc: output all of a if any of it is hit by b
  type: boolean
  inputBinding:
    prefix: -aHitAny
- id: min_coverage
  doc: =0.N  min coverage of b to output match (or if -aHitAny, of a). Not applied
    to 0-length items.  Default 0.000010
  type: boolean
  inputBinding:
    prefix: -minCoverage
- id: b_score
  doc: output score from b.bed (must be at least 5 field bed)
  type: boolean
  inputBinding:
    prefix: -bScore
- id: tab
  doc: chop input at tabs not spaces
  type: boolean
  inputBinding:
    prefix: -tab
- id: allow_start_equal_end
  doc: Don't discard 0-length items of a or b (e.g. point insertions)
  type: boolean
  inputBinding:
    prefix: -allowStartEqualEnd
outputs: []
cwlVersion: v1.1
baseCommand:
- bedIntersect
