class: CommandLineTool
id: fc_phased_ovlp_to_graph.py.cwl
inputs:
- id: in_min_len
  doc: 'minimum length of the reads to be considered for assembling (default: 4000)'
  type: long
  inputBinding:
    prefix: --min-len
- id: in_min_idt
  doc: 'minimum alignment identity of the reads to be considered for assembling (default:
    96)'
  type: long
  inputBinding:
    prefix: --min-idt
- id: in_lfc
  doc: 'use local flow constraint method rather than best overlap method to resolve
    knots in string graph (default: False)'
  type: boolean
  inputBinding:
    prefix: --lfc
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fc_phased_ovlp_to_graph.py
