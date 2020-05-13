class: CommandLineTool
id: computeCoverageStat.cwl
inputs:
- id: g
  doc: Mandatory, path G to a gkpStore directory.
  type: string
  inputBinding:
    prefix: -g
- id: t
  doc: <v> Mandatory, path T to a tigStore, and version V.
  type: string
  inputBinding:
    prefix: -t
- id: s
  doc: Optional, assume genome size S.
  type: string
  inputBinding:
    prefix: -s
- id: o
  doc: Recommended, prefix for output files.
  type: string
  inputBinding:
    prefix: -o
- id: n
  doc: Do not update the tigStore (default = do update).
  type: boolean
  inputBinding:
    prefix: -n
- id: u
  doc: Do not estimate based on N50 (default = use N50).
  type: boolean
  inputBinding:
    prefix: -u
- id: l
  doc: Be leniant; don't require reads start at position zero.
  type: boolean
  inputBinding:
    prefix: -L
outputs: []
cwlVersion: v1.1
baseCommand:
- computeCoverageStat
