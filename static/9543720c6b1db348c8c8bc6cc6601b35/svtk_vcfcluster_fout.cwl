class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/svtk_vcfcluster_fout.cwl
inputs:
- id: r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
- id: d
  doc: ''
  type: string
  inputBinding:
    prefix: -d
- id: f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: x
  doc: ''
  type: string
  inputBinding:
    prefix: -x
- id: s_vtk
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: vcf_cluster
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- svtk
- vcfcluster
- fout
