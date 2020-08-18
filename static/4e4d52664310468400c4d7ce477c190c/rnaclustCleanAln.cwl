class: CommandLineTool
id: ../../../rnaclustCleanAln.pl.cwl
inputs:
- id: rna_clust_gen_report_do_tpl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: dir
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- rnaclustCleanAln.pl
