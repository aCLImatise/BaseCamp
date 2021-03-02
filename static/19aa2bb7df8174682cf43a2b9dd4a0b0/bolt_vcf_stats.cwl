class: CommandLineTool
id: bolt_vcf_stats.cwl
inputs:
- id: in_file_path
  doc: a VCF file (*require)
  type: File?
  inputBinding:
    prefix: --filepath
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
- id: in_stats
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
- stats
