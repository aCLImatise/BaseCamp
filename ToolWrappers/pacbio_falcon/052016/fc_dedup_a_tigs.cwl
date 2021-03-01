class: CommandLineTool
id: fc_dedup_a_tigs.cwl
inputs:
- id: in_max_aln_cov
  doc: ''
  type: long?
  inputBinding:
    prefix: --max_aln_cov
- id: in_max_idt
  doc: ''
  type: long?
  inputBinding:
    prefix: --max_idt
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fc_dedup_a_tigs
