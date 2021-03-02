class: CommandLineTool
id: 6ft.cwl
inputs:
- id: in_translate_reverse_strand
  doc: ': translate only reverse (antisense) strand.'
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_translate_only_sense
  doc: ': translate only sense strand.'
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_valuespecifies_output_width
  doc: "<value>:\nspecifies the output width (default: 60).\n"
  type: boolean?
  inputBinding:
    prefix: -W
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- 6ft
