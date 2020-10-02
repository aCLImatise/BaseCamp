class: CommandLineTool
id: fc_ovlp_to_graph.cwl
inputs:
- id: in_min_len
  doc: minimum length of the reads to be considered for
  type: long
  inputBinding:
    prefix: --min_len
- id: in_lfc
  doc: "use local flow constraint method rather than best overlap\nmethod to resolve\
    \ knots in string graph\n"
  type: boolean
  inputBinding:
    prefix: --lfc
- id: in_min_idt
  doc: ''
  type: string
  inputBinding:
    prefix: --min_idt
- id: in_assembling
  doc: --min_idt MIN_IDT  minimum alignment identity of the reads to be considered
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fc_ovlp_to_graph
