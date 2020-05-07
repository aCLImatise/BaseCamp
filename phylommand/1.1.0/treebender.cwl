class: CommandLineTool
id: treebender.cwl
inputs:
- id: a
  doc: "'\\n' (default is ','). If the switch r is"
  type: boolean
  inputBinding:
    prefix: -a
- id: internal_node_stats
  doc: 1.96:rate, or
  type: boolean
  inputBinding:
    prefix: --internal_node_stats
- id: internal_node_stats
  doc: :rate.
  type: boolean
  inputBinding:
    prefix: --internal_node_stats
- id: u
  doc: '[value]                     given value, e.g. 3.5 (default 1.0).'
  type: boolean
  inputBinding:
    prefix: -u
- id: v
  doc: '[value:taxon_string]        most recent common ancestor of comma separated
    taxa. Separate clade with colon E.g. -V 3: Taxon_1,Taxon_2:Taxon_3,Taxon_4.'
  type: boolean
  inputBinding:
    prefix: -V
- id: u
  doc: '[value:cut off]             distance (cut off) from root with the given value
    (separated by colon), e.g. 2:40 (default 1.0:0.0).'
  type: boolean
  inputBinding:
    prefix: -U
- id: nni
  doc: 4, or --nni all.
  type: boolean
  inputBinding:
    prefix: --nni
- id: get_relaxed_out_group
  doc: .
  type: boolean
  inputBinding:
    prefix: --get_relaxed_outgroup
outputs: []
cwlVersion: v1.1
baseCommand:
- treebender
