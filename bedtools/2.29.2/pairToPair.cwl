#!/usr/bin/env cwl-runner

baseCommand:
- pairToPair
class: CommandLineTool
cwlVersion: v1.0
id: pairtopair
inputs:
- doc: ''
  id: bed_tools
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: pair_to_pair
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: options
  inputBinding:
    position: 2
  type: string
- doc: Minimum overlap required as fraction of A (e.g. 0.05). Default is 1E-9 (effectively
    1bp).
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: Approach to reporting overlaps between A and B. neither Report overlaps if
    neither end of A overlaps B. either  Report overlaps if either ends of A overlap
    B. both    Report overlaps if both ends of A overlap B. notboth Report overlaps
    if one or neither of A's overlap B. - Default = both.
  id: type
  inputBinding:
    prefix: -type
  type: boolean
- doc: 'The amount of slop (in b.p.). to be added to each footprint of A. *Note*:
    Slop is subtracted from start1 and start2 and added to end1 and end2. - Default
    = 0.'
  id: slop
  inputBinding:
    prefix: -slop
  type: boolean
- doc: Add slop based to each BEDPE footprint based on strand. - If strand is "+",
    slop is only added to the end coordinates. - If strand is "-", slop is only added
    to the start coordinates. - By default, slop is added in both directions.
  id: ss
  inputBinding:
    prefix: -ss
  type: boolean
- doc: Ignore strands when searching for overlaps. - By default, strands are enforced.
  id: is
  inputBinding:
    prefix: -is
  type: boolean
- doc: Require the hits to have different names (i.e. avoid self-hits). - By default,
    same names are allowed.
  id: rdn
  inputBinding:
    prefix: -rdn
  type: boolean
