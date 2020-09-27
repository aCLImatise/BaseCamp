class: CommandLineTool
id: vcf2bed.NOME.pl.cwl
inputs:
- id: in_perl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_vcftwobedsixplussixdotpl
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
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- vcf2bed.NOME.pl
