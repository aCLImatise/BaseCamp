class: CommandLineTool
id: svtk_rdtest2vcf_fout.cwl
inputs:
- id: in_contigs
  doc: ''
  type: string
  inputBinding:
    prefix: --contigs
- id: in_s_vtk
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_rd_test_two_vcf
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_bed
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_samples
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_f_out
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- svtk
- rdtest2vcf
- fout
