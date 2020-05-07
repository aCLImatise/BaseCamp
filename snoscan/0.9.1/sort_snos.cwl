class: CommandLineTool
id: sort_snos.pl.cwl
inputs:
- id: h
  doc: ':  sort snos by position of hit in query sequence'
  type: boolean
  inputBinding:
    prefix: -H
- id: r
  doc: ':  sort snos by position & Remove lower-scoring duplicate hits (both start
    & end bounds must match'
  type: boolean
  inputBinding:
    prefix: -R
- id: r
  doc: ':  same as -R, but only start bound must match to count as duplicate'
  type: boolean
  inputBinding:
    prefix: -r
- id: m
  doc: ':  sort snos, output only hits to Mapped sites'
  type: boolean
  inputBinding:
    prefix: -M
- id: u
  doc: ':  sort snos, output only hits to Unmapped sites'
  type: boolean
  inputBinding:
    prefix: -U
- id: t
  doc: ':  sort snos, output only top <int> hits per meth site (def=50)'
  type: long
  inputBinding:
    prefix: -T
- id: s
  doc: ':  sort snos, require minimum score'
  type: string
  inputBinding:
    prefix: -S
- id: m
  doc: ":  sort snos, don't include hits _over_ max <score>"
  type: string
  inputBinding:
    prefix: -m
- id: e
  doc: ':  Extract only snos with <expr> in header line'
  type: string
  inputBinding:
    prefix: -e
- id: f
  doc: ":  Don't sort -- just filter & output in same order"
  type: boolean
  inputBinding:
    prefix: -F
outputs: []
cwlVersion: v1.1
baseCommand:
- sort-snos.pl
