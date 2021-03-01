class: CommandLineTool
id: svtk_vcfcluster_fout.cwl
inputs:
- id: in_x
  doc: ''
  type: string?
  inputBinding:
    prefix: -x
- id: in_f
  doc: ''
  type: string?
  inputBinding:
    prefix: -f
- id: in_d
  doc: ''
  type: string?
  inputBinding:
    prefix: -d
- id: in_r
  doc: ''
  type: string?
  inputBinding:
    prefix: -r
- id: in_s_vtk
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_vcf_cluster
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
- svtk
- vcfcluster
- fout
