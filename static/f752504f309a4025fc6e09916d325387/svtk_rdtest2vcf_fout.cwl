class: CommandLineTool
id: ../../../svtk_rdtest2vcf_fout.cwl
inputs:
- id: contigs
  doc: ''
  type: string
  inputBinding:
    prefix: --contigs
- id: s_vtk
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: rd_test_two_vcf
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: bed
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: samples
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: f_out
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- svtk
- rdtest2vcf
- fout
