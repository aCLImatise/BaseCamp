class: CommandLineTool
id: filter_psms.rb.cwl
inputs:
- id: in_output
  doc: An explicitly named output file.
  type: File?
  inputBinding:
    prefix: --output
- id: in_debug
  doc: Run in debug mode [false]
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_attribute
  doc: Match expression against a specific search_hit attribute [protein]
  type: string?
  inputBinding:
    prefix: --attribute
- id: in_check_alternatives
  doc: Also match expression against to alternative_proteins [false]
  type: boolean?
  inputBinding:
    prefix: --check-alternatives
- id: in_reject
  doc: Keep mismatches instead of matches [false]
  type: boolean?
  inputBinding:
    prefix: --reject
- id: in_expression
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_file_dot_pep_xml
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: An explicitly named output file.
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- filter_psms.rb
