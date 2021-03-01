class: CommandLineTool
id: vcf2coverage.pl.cwl
inputs:
- id: in_perl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_vcf_two_cover_a_edo_tpl
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_input_file_name
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_cg
  doc: ''
  type: string?
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- vcf2coverage.pl
