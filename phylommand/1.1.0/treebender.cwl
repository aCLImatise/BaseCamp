class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/treebender.cwl
inputs:
- id: _switch_r
  doc: "'\\n' (default is ','). If the switch r is"
  type: boolean
  inputBinding:
    prefix: -a
- id: given_value_default
  doc: '[value]                     given value, e.g. 3.5 (default 1.0).'
  type: boolean
  inputBinding:
    prefix: -u
- id: most_recent_common
  doc: '[value:taxon_string]        most recent common ancestor of comma separated
    taxa. Separate clade with colon E.g. -V 3: Taxon_1,Taxon_2:Taxon_3,Taxon_4.'
  type: boolean
  inputBinding:
    prefix: -V
- id: distance_cut_root
  doc: '[value:cut off]             distance (cut off) from root with the given value
    (separated by colon), e.g. 2:40 (default 1.0:0.0).'
  type: boolean
  inputBinding:
    prefix: -U
- id: nni
  doc: ', or --nni all.'
  type: string
  inputBinding:
    prefix: --nni
- id: arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- treebender
