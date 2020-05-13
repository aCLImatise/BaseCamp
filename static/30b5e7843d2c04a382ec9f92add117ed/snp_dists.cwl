class: CommandLineTool
id: snp_dists.cwl
inputs:
- id: v
  doc: Print version and exit
  type: boolean
  inputBinding:
    prefix: -v
- id: q
  doc: Quiet mode; do not print progress information
  type: boolean
  inputBinding:
    prefix: -q
- id: a
  doc: Count all differences not just [AGTC]
  type: boolean
  inputBinding:
    prefix: -a
- id: k
  doc: Keep case, don't uppercase all letters
  type: boolean
  inputBinding:
    prefix: -k
- id: m
  doc: Output MOLTEN instead of TSV
  type: boolean
  inputBinding:
    prefix: -m
- id: c
  doc: Use comma instead of tab in output
  type: boolean
  inputBinding:
    prefix: -c
- id: b
  doc: Blank top left corner cell
  type: boolean
  inputBinding:
    prefix: -b
outputs: []
cwlVersion: v1.1
baseCommand:
- snp-dists
