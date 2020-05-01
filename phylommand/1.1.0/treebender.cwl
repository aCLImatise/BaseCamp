#!/usr/bin/env cwl-runner

baseCommand:
- treebender
class: CommandLineTool
cwlVersion: v1.0
id: treebender
inputs:
- doc: "'\\n' (default is ','). If the switch r is"
  id: a
  inputBinding:
    prefix: -a
  type: boolean
- doc: 1.96:rate, or
  id: internal_node_stats
  inputBinding:
    prefix: --internal_node_stats
  type: boolean
- doc: :rate.
  id: internal_node_stats
  inputBinding:
    prefix: --internal_node_stats
  type: boolean
- doc: '[value]                     given value, e.g. 3.5 (default 1.0).'
  id: u
  inputBinding:
    prefix: -u
  type: boolean
- doc: '[value:taxon_string]        most recent common ancestor of comma separated
    taxa. Separate clade with colon E.g. -V 3: Taxon_1,Taxon_2:Taxon_3,Taxon_4.'
  id: v
  inputBinding:
    prefix: -V
  type: boolean
- doc: '[value:cut off]             distance (cut off) from root with the given value
    (separated by colon), e.g. 2:40 (default 1.0:0.0).'
  id: u
  inputBinding:
    prefix: -U
  type: boolean
- doc: 4, or --nni all.
  id: nni
  inputBinding:
    prefix: --nni
  type: boolean
- doc: .
  id: get_relaxed_out_group
  inputBinding:
    prefix: --get_relaxed_outgroup
  type: boolean
