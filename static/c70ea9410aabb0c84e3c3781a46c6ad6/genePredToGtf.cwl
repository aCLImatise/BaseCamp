class: CommandLineTool
id: genePredToGtf.cwl
inputs:
- id: in_utr
  doc: '- Add 5UTR and 3UTR features'
  type: boolean?
  inputBinding:
    prefix: -utr
- id: in_honor_cds_stat
  doc: "- use cdsStartStat/cdsEndStat when defining start/end\ncodon records"
  type: boolean?
  inputBinding:
    prefix: -honorCdsStat
- id: in_source
  doc: set source name to use
  type: string?
  inputBinding:
    prefix: -source
- id: in_add_comments
  doc: "- Add comments before each set of transcript records.\nallows for easier visual\
    \ inspection"
  type: boolean?
  inputBinding:
    prefix: -addComments
- id: in_database
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_gene_pred_table
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- genePredToGtf
