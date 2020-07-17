class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/gaas_fasta_domain_extractor.pl.cwl
inputs:
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
- id: e
  doc: ''
  type: string
  inputBinding:
    prefix: -e
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: n
  doc: ''
  type: string
  inputBinding:
    prefix: -n
- id: fast_a_domain_extractor_do_tpl
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- gaas_fasta_domain_extractor.pl
