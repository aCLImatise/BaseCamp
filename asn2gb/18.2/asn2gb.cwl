class: CommandLineTool
id: asn2gb.cwl
inputs:
- id: a
  doc: 'ASN.1 Type Single Record: a Any, e Seq-entry, b Bioseq, s Bioseq-set, m Seq-submit,
    q Catenated Release File: t Batch Bioseq-set, u Batch Seq-submit'
  type: boolean
  inputBinding:
    prefix: -a
outputs: []
cwlVersion: v1.1
baseCommand:
- asn2gb
