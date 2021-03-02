class: CommandLineTool
id: bolt_vcf_venn.cwl
inputs:
- id: in_file_path
  doc: VCF files (*require at 3 files)
  type: File?
  inputBinding:
    prefix: --filepath
- id: in_primary
  doc: a primary VCF file (*require)
  type: File?
  inputBinding:
    prefix: --primary
- id: in_sv_type
  doc: SVTYPE such as DEL, DUP, INV, INS and BND (*require, support only one type)
  type: string?
  inputBinding:
    prefix: --svtype
- id: in_genie
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_vcf
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_venn
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bolt
- vcf
- venn
