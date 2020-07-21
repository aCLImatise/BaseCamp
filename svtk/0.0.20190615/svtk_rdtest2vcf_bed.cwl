class: CommandLineTool
id: ../../../svtk_rdtest2vcf_bed.cwl
inputs:
- id: contigs
  doc: ''
  type: string
  inputBinding:
    prefix: --contigs
- id: samples
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: f_out
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- svtk
- rdtest2vcf
- bed
