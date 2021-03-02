class: CommandLineTool
id: rnaclustCleanAln.pl.cwl
inputs:
- id: in_rna_clust_gen_report_do_tpl
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rnaclustCleanAln.pl
