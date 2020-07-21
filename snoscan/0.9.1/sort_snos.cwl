class: CommandLineTool
id: ../../../sort_snos.pl.cwl
inputs:
- id: sort_snos_position_hit
  doc: ':  sort snos by position of hit in query sequence'
  type: boolean
  inputBinding:
    prefix: -H
- id: sort_snos_position_remove
  doc: ':  sort snos by position & Remove lower-scoring duplicate hits (both start
    & end bounds must match'
  type: boolean
  inputBinding:
    prefix: -R
- id: same_start_match
  doc: ':  same as -R, but only start bound must match to count as duplicate'
  type: boolean
  inputBinding:
    prefix: -r
- id: sort_snos_mapped
  doc: ':  sort snos, output only hits to Mapped sites'
  type: boolean
  inputBinding:
    prefix: -M
- id: sort_snos_unmapped
  doc: ':  sort snos, output only hits to Unmapped sites'
  type: boolean
  inputBinding:
    prefix: -U
- id: sort_snos_output
  doc: ':  sort snos, output only top <int> hits per meth site (def=50)'
  type: long
  inputBinding:
    prefix: -T
- id: sort_snos_require
  doc: ':  sort snos, require minimum score'
  type: string
  inputBinding:
    prefix: -S
- id: sort_snos_include
  doc: ":  sort snos, don't include hits _over_ max <score>"
  type: string
  inputBinding:
    prefix: -m
- id: extract_only_snos
  doc: ':  Extract only snos with <expr> in header line'
  type: string
  inputBinding:
    prefix: -e
- id: sort__output
  doc: ":  Don't sort -- just filter & output in same order"
  type: boolean
  inputBinding:
    prefix: -F
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -OPTIONS
- id: more_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -MORE_OPTIONS
outputs: []
cwlVersion: v1.1
baseCommand:
- sort-snos.pl
