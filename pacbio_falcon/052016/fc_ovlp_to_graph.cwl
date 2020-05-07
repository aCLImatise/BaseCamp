class: CommandLineTool
id: fc_ovlp_to_graph.cwl
inputs:
- id: overlap_file
  doc: a file that contains the overlap information.
  type: string
  inputBinding:
    position: 0
- id: min_len
  doc: minimum length of the reads to be considered for assembling
  type: long
  inputBinding:
    prefix: --min_len
- id: min_idt
  doc: minimum alignment identity of the reads to be considered for assembling
  type: long
  inputBinding:
    prefix: --min_idt
- id: lfc
  doc: use local flow constraint method rather than best overlap method to resolve
    knots in string graph
  type: boolean
  inputBinding:
    prefix: --lfc
outputs: []
cwlVersion: v1.1
baseCommand:
- fc_ovlp_to_graph
