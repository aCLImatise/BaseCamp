class: CommandLineTool
id: pairToPair.cwl
inputs:
- id: bed_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: pair_to_pair
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: f
  doc: Minimum overlap required as fraction of A (e.g. 0.05). Default is 1E-9 (effectively
    1bp).
  type: boolean
  inputBinding:
    prefix: -f
- id: type
  doc: Approach to reporting overlaps between A and B. neither Report overlaps if
    neither end of A overlaps B. either  Report overlaps if either ends of A overlap
    B. both    Report overlaps if both ends of A overlap B. notboth Report overlaps
    if one or neither of A's overlap B. - Default = both.
  type: boolean
  inputBinding:
    prefix: -type
- id: slop
  doc: 'The amount of slop (in b.p.). to be added to each footprint of A. *Note*:
    Slop is subtracted from start1 and start2 and added to end1 and end2. - Default
    = 0.'
  type: boolean
  inputBinding:
    prefix: -slop
- id: ss
  doc: Add slop based to each BEDPE footprint based on strand. - If strand is "+",
    slop is only added to the end coordinates. - If strand is "-", slop is only added
    to the start coordinates. - By default, slop is added in both directions.
  type: boolean
  inputBinding:
    prefix: -ss
- id: is
  doc: Ignore strands when searching for overlaps. - By default, strands are enforced.
  type: boolean
  inputBinding:
    prefix: -is
- id: rdn
  doc: Require the hits to have different names (i.e. avoid self-hits). - By default,
    same names are allowed.
  type: boolean
  inputBinding:
    prefix: -rdn
outputs: []
cwlVersion: v1.1
baseCommand:
- pairToPair
