class: CommandLineTool
id: svtk_rdtest2vcf_bed.cwl
inputs:
- id: in_contigs
  doc: ''
  type: string?
  inputBinding:
    prefix: --contigs
- id: in_samples
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_f_out
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
- rdtest2vcf
- bed
