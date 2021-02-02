class: CommandLineTool
id: protxml_to_table.rb.cwl
inputs:
- id: in_output
  doc: An explicitly named output file.
  type: File
  inputBinding:
    prefix: --output
- id: in_groups
  doc: Print output by groups rather than for each protein [false]
  type: boolean
  inputBinding:
    prefix: --groups
- id: in_invert_probabilities
  doc: Output 1-p instead of p for all probability values [false]
  type: boolean
  inputBinding:
    prefix: --invert-probabilities
- id: in_file_one_dot_prot_xml
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: An explicitly named output file.
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- protxml_to_table.rb
