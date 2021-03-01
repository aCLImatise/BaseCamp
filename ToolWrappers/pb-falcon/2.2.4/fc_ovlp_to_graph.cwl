class: CommandLineTool
id: fc_ovlp_to_graph.cwl
inputs:
- id: in_overlap_file
  doc: 'a file that contains the overlap information. (default: preads.m4)'
  type: File?
  inputBinding:
    prefix: --overlap-file
- id: in_lfc
  doc: 'use local flow constraint method rather than best overlap method to resolve
    knots in string graph (default: False)'
  type: boolean?
  inputBinding:
    prefix: --lfc
- id: in_disable_chime_r_bridge_removal
  doc: 'disable chimer induced bridge removal (default: False)'
  type: boolean?
  inputBinding:
    prefix: --disable-chimer-bridge-removal
- id: in_ctg_prefix
  doc: 'Prefix for contig names. (default: )'
  type: string?
  inputBinding:
    prefix: --ctg-prefix
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fc_ovlp_to_graph
