class: CommandLineTool
id: augustus_to_proteindb.rb.cwl
inputs:
- id: in_output
  doc: An explicitly named output file. \
  type: File?
  inputBinding:
    prefix: --output
- id: in_info
  doc: Include CDS Coordinates [false]
  type: boolean?
  inputBinding:
    prefix: --info
- id: in_augustus_dot_gff_three
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: An explicitly named output file. \
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- augustus_to_proteindb.rb
