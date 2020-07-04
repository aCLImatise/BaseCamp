class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/svtk_annotate.cwl
inputs:
- id: gen_code
  doc: ''
  type: string
  inputBinding:
    prefix: --gencode
- id: noncoding
  doc: ''
  type: string
  inputBinding:
    prefix: --noncoding
- id: s_vtk
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: vcf
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: annotated_vcf
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- svtk
- annotate
