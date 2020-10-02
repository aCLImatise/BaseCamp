class: CommandLineTool
id: xpath.cwl
inputs:
- id: in_only_output_path
  doc: ', only output the resulting PATH.'
  type: File
  inputBinding:
    prefix: -q
- id: in_use_suffix_linefeed
  doc: ', use suffix instead of linefeed.'
  type: string
  inputBinding:
    prefix: -s
- id: in_use_prefix_nothing
  doc: ', use prefix instead of nothing.'
  type: string
  inputBinding:
    prefix: -p
- id: in_use_external_dtd
  doc: "'t use an external DTD."
  type: string
  inputBinding:
    prefix: -n
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_only_output_path
  doc: ', only output the resulting PATH.'
  type: File
  outputBinding:
    glob: $(inputs.in_only_output_path)
cwlVersion: v1.1
baseCommand:
- xpath
