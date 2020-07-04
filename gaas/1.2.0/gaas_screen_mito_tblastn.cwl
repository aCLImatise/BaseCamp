class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/gaas_screen_mito_tblastn.pl.cwl
inputs:
- id: tab
  doc: Input tabulated blast file -outfmt 6
  type: boolean
  inputBinding:
    prefix: --tab
- id: output
  doc: The output will be the EMBL file with the record "headers" modified
  type: string
  inputBinding:
    prefix: --output
- id: genome
  doc: Optional. Genome in fasta format. Allow to calculate the mapping coverage.
  type: string
  inputBinding:
    prefix: --genome
- id: screen_mi_to_tblastn_do_tpl
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- gaas_screen_mito_tblastn.pl
