class: CommandLineTool
id: tbvcfreport_generate_VCF_DIR.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: vcf_dir
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- tbvcfreport
- generate
- VCF_DIR
