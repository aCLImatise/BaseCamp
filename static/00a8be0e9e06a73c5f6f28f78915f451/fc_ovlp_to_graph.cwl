class: CommandLineTool
id: fc_ovlp_to_graph.cwl
inputs:
- id: overlap_file
  doc: 'a file that contains the overlap information. (default: preads.m4)'
  type: string
  inputBinding:
    prefix: --overlap-file
- id: lfc
  doc: 'use local flow constraint method rather than best overlap method to resolve
    knots in string graph (default: False)'
  type: boolean
  inputBinding:
    prefix: --lfc
- id: disable_chime_r_bridge_removal
  doc: 'disable chimer induced bridge removal (default: False)'
  type: boolean
  inputBinding:
    prefix: --disable-chimer-bridge-removal
- id: ctg_prefix
  doc: 'Prefix for contig names. (default: )'
  type: string
  inputBinding:
    prefix: --ctg-prefix
- id: utg_data_0
  doc: (maybe)
  type: boolean
  inputBinding:
    prefix: '- utg_data0'
outputs: []
cwlVersion: v1.1
baseCommand:
- fc_ovlp_to_graph
