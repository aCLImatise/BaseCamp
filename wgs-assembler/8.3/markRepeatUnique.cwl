class: CommandLineTool
id: markRepeatUnique.cwl
inputs:
- id: g
  doc: Mandatory, path G to a gkpStore directory.
  type: string
  inputBinding:
    prefix: -g
- id: t
  doc: <v>   Mandatory, path T to a tigStore, and version V.
  type: string
  inputBinding:
    prefix: -t
- id: e
  doc: Microhet probability (default 1e-5)
  type: string
  inputBinding:
    prefix: -e
- id: i
  doc: Microhet cutoff (default -1)
  type: string
  inputBinding:
    prefix: -i
- id: j
  doc: Unitig is not unique if astat is below J (cgbUniqueCutoff)
  type: string
  inputBinding:
    prefix: -j
- id: k
  doc: (unused) (cgbDefinitelyUniqueCutoff)
  type: string
  inputBinding:
    prefix: -k
- id: span
  doc: Unitig is not unique if a single read spans more than fraction F (default 1.0)
    of unitig
  type: string
  inputBinding:
    prefix: -span
- id: low_cov
  doc: F  Unitig is not unique if fraction F (default 1.0) of unitig is below read
    depth D (default 2)
  type: string
  inputBinding:
    prefix: -lowcov
- id: reads
  doc: 'Unitig is not unique if unitig has fewer than R (default 2) reads If R is
    fractional, the least populous unitigs containing fraction R of reads are marked
    as repeat Example: unitigs with 9 or fewer reads contain 10% of the reads.  -reads
    0.10 would mark these are repeat.'
  type: string
  inputBinding:
    prefix: -reads
- id: long
  doc: Unitig is unique if unitig is at least L (default unlimited) bases long
  type: string
  inputBinding:
    prefix: -long
- id: short
  doc: Unitig is not unique if unitig is shorter than S (default 1000) bases long
  type: string
  inputBinding:
    prefix: -short
- id: o
  doc: Prefix for output files.
  type: string
  inputBinding:
    prefix: -o
- id: n
  doc: Do not update the tigStore.
  type: boolean
  inputBinding:
    prefix: -n
outputs: []
cwlVersion: v1.1
baseCommand:
- markRepeatUnique
