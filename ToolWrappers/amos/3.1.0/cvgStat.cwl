class: CommandLineTool
id: cvgStat.cwl
inputs:
- id: in_name_bank_used
  doc: '- name of bank to be used'
  type: string?
  inputBinding:
    prefix: -b
- id: in_lay
  doc: '- computes coverage of layout messages'
  type: boolean?
  inputBinding:
    prefix: -lay
- id: in_ctg
  doc: '- computes coverage of contig messages (default)'
  type: boolean?
  inputBinding:
    prefix: -ctg
- id: in_sc_aff
  doc: '- computes coverage of scaffolds'
  type: boolean?
  inputBinding:
    prefix: -scaff
- id: in_red
  doc: '- computes read coverage (default)'
  type: boolean?
  inputBinding:
    prefix: -red
- id: in_frg
  doc: '- computes fragment/clone coverage'
  type: boolean?
  inputBinding:
    prefix: -frg
- id: in_rdf_rg
  doc: '- computes difference between fragment and read coverages'
  type: boolean?
  inputBinding:
    prefix: -rdfrg
- id: in_iid
  doc: '- headers are iids'
  type: boolean?
  inputBinding:
    prefix: -iid
- id: in_eid
  doc: '- headers are eids'
  type: boolean?
  inputBinding:
    prefix: -eid
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- cvgStat
