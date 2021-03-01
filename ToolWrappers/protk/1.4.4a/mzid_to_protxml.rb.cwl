class: CommandLineTool
id: mzid_to_protxml.rb.cwl
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
- id: in_min_prob
  doc: Minimum probability for protein to be included in the output [0.05]
  type: double?
  inputBinding:
    prefix: --minprob
- id: in_file_one_dot_mz_id
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
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- mzid_to_protxml.rb
