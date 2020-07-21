class: CommandLineTool
id: ../../../mageckGSEA.cwl
inputs:
- id: e
  doc: ''
  type: boolean
  inputBinding:
    prefix: -e
- id: s
  doc: ''
  type: boolean
  inputBinding:
    prefix: -s
- id: c
  doc: ''
  type: string
  inputBinding:
    prefix: -c
- id: p
  doc: ''
  type: string
  inputBinding:
    prefix: -p
- id: n
  doc: ''
  type: boolean
  inputBinding:
    prefix: -n
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
- id: g
  doc: ''
  type: boolean
  inputBinding:
    prefix: -g
- id: mage_ckg_sea
  doc: '[-e] [-s] [-c <score_column>] [-p <perm_time>] [-n <pathway_name>] [-o <output_file>]
    -r <rank_file> -g <gmt_file> [--] [--version] [-h]'
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- mageckGSEA
