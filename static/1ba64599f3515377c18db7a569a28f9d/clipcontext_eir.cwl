class: CommandLineTool
id: clipcontext_eir.cwl
inputs:
- id: tr
  doc: ''
  type: string
  inputBinding:
    prefix: --tr
- id: gtf
  doc: ''
  type: string
  inputBinding:
    prefix: --gtf
- id: exon_out
  doc: ''
  type: string
  inputBinding:
    prefix: --exon-out
- id: intron_out
  doc: ''
  type: string
  inputBinding:
    prefix: --intron-out
outputs: []
cwlVersion: v1.1
baseCommand:
- clipcontext
- eir
