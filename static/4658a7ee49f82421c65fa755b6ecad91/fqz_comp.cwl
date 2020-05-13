class: CommandLineTool
id: fqz_comp.cwl
inputs:
- id: q
  doc: Perform lossy compression with all quality values being within 'num' distance
    from their original value. Default is lossless, i.e. "-q 0"
  type: string
  inputBinding:
    prefix: -Q
- id: s
  doc: Sequence compression level. 1-9 [Def. 3] Specifying '+' on the end (eg -s5+)
    will use models of multiple sizes for improved compression.
  type: string
  inputBinding:
    prefix: -s
- id: b
  doc: Use both strands in sequence hash table.
  type: boolean
  inputBinding:
    prefix: -b
- id: e
  doc: 'Extra seq compression: 16-bit vs 8-bit counters.'
  type: boolean
  inputBinding:
    prefix: -e
- id: q
  doc: Quality compression level.  1-3 [Def. 2]
  type: string
  inputBinding:
    prefix: -q
- id: n
  doc: Name compression level.  1-2 [Def. 2]
  type: string
  inputBinding:
    prefix: -n
- id: p
  doc: Disable multi-threading
  type: boolean
  inputBinding:
    prefix: -P
- id: x
  doc: Disable generation/verification of check sums
  type: boolean
  inputBinding:
    prefix: -X
- id: s
  doc: SOLiD format
  type: boolean
  inputBinding:
    prefix: -S
outputs: []
cwlVersion: v1.1
baseCommand:
- fqz_comp
