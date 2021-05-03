class: CommandLineTool
id: vcf2bed.pl.cwl
inputs:
- id: in_input_file_name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_cg
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- vcf2bed.pl
