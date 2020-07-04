class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fc_dedup_a_tigs.cwl
inputs:
- id: max_idt
  doc: ''
  type: long
  inputBinding:
    prefix: --max_idt
- id: max_aln_cov
  doc: ''
  type: long
  inputBinding:
    prefix: --max_aln_cov
outputs: []
cwlVersion: v1.1
baseCommand:
- fc_dedup_a_tigs
