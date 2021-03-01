class: CommandLineTool
id: bolt_vcf_filter.cwl
inputs:
- id: in_file_path
  doc: a VCF file (*require)
  type: File?
  inputBinding:
    prefix: --filepath
- id: in_maxlength
  doc: Max SVLENGTH (default 2147483647)
  type: long?
  inputBinding:
    prefix: --maxlength
- id: in_minlength
  doc: Min SVLENGTH (default -2147483647)
  type: long?
  inputBinding:
    prefix: --minlength
- id: in_only_sv
  doc: Only SVs
  type: boolean?
  inputBinding:
    prefix: --onlysv
- id: in_output
  doc: output file
  type: File?
  inputBinding:
    prefix: --output
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
- id: in_filter
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: output file
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- bolt
- vcf
- filter
