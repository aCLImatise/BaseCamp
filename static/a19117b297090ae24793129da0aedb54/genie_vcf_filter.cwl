class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/genie_vcf_filter.cwl
inputs:
- id: file_path
  doc: a VCF file (*require)
  type: string
  inputBinding:
    prefix: --filepath
- id: maxlength
  doc: Max SVLENGTH (default 2147483647)
  type: long
  inputBinding:
    prefix: --maxlength
- id: minlength
  doc: Min SVLENGTH (default -2147483647)
  type: long
  inputBinding:
    prefix: --minlength
- id: only_sv
  doc: Only SVs
  type: boolean
  inputBinding:
    prefix: --onlysv
- id: output
  doc: output file
  type: string
  inputBinding:
    prefix: --output
- id: flags
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- genie
- vcf
- filter
