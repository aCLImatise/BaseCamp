class: CommandLineTool
id: ucsc_to_json.pl.cwl
inputs:
- id: in
  doc: ''
  type: string
  inputBinding:
    prefix: --in
- id: out
  doc: ''
  type: string
  inputBinding:
    prefix: --out
- id: track
  doc: ''
  type: string
  inputBinding:
    prefix: --track
- id: css_class
  doc: ''
  type: string
  inputBinding:
    prefix: --cssClass
- id: primary_name
  doc: ''
  type: string
  inputBinding:
    prefix: --primaryName
- id: arrowhead_class
  doc: ''
  type: string
  inputBinding:
    prefix: --arrowheadClass
- id: sub_feature_classes
  doc: ''
  type: string
  inputBinding:
    prefix: --subfeatureClasses
- id: client_config
  doc: ''
  type: string
  inputBinding:
    prefix: --clientConfig
- id: ncl_chunk
  doc: ''
  type: string
  inputBinding:
    prefix: --nclChunk
- id: compress
  doc: ''
  type: boolean
  inputBinding:
    prefix: --compress
- id: sort_mem
  doc: ''
  type: string
  inputBinding:
    prefix: --sortMem
outputs: []
cwlVersion: v1.1
baseCommand:
- ucsc-to-json.pl
