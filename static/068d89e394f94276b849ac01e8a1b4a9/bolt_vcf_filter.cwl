class: CommandLineTool
id: bolt_vcf_filter.cwl
inputs:
- id: genie
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: vcf
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: filter
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: flags
  doc: ''
  type: string
  inputBinding:
    position: 3
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
outputs: []
cwlVersion: v1.1
baseCommand:
- bolt
- vcf
- filter
