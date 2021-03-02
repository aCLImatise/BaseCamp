class: CommandLineTool
id: sort_snos.cwl
inputs:
- id: in_sort_snos_position_hit
  doc: ':  sort snos by position of hit in query sequence'
  type: boolean?
  inputBinding:
    prefix: -H
- id: in_sort_snos_position_remove
  doc: ":  sort snos by position & Remove lower-scoring duplicate hits\n(both start\
    \ & end bounds must match"
  type: boolean?
  inputBinding:
    prefix: -R
- id: in_same_r_only
  doc: ':  same as -R, but only start bound must match to count as duplicate'
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_sort_snos_mapped
  doc: ':  sort snos, output only hits to Mapped sites'
  type: boolean?
  inputBinding:
    prefix: -M
- id: in_sort_snos_unmapped
  doc: ':  sort snos, output only hits to Unmapped sites'
  type: boolean?
  inputBinding:
    prefix: -U
- id: in_sort_snos_output
  doc: ':  sort snos, output only top <int> hits per meth site (def=50)'
  type: long?
  inputBinding:
    prefix: -T
- id: in_sort_snos_require
  doc: ':  sort snos, require minimum score'
  type: string?
  inputBinding:
    prefix: -S
- id: in_sort_snos_include
  doc: ":  sort snos, don't include hits _over_ max <score>"
  type: long?
  inputBinding:
    prefix: -m
- id: in_extract_only_snos
  doc: ':  Extract only snos with <expr> in header line'
  type: string?
  inputBinding:
    prefix: -e
- id: in_sort__output
  doc: ":  Don't sort -- just filter & output in same order"
  type: boolean?
  inputBinding:
    prefix: -F
- id: in_more_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -MORE_OPTIONS
- id: in_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -OPTIONS
- id: in_snorna_hits_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/snoscan:1.0--pl526h516909a_0
cwlVersion: v1.1
baseCommand:
- sort-snos
