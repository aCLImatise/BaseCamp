class: CommandLineTool
id: show_diff.cwl
inputs:
- id: in_output_diff_information
  doc: Output diff information as AMOS features
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_do_show_header
  doc: Do not show header
  type: boolean?
  inputBinding:
    prefix: -H
- id: in_show_diff_information_queries
  doc: Show diff information for queries
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_show_diff_information_defaultoutputs
  doc: "Show diff information for references (default)\nOutputs a list of structural\
    \ differences for each sequence in"
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_delta_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mummer4:4.0.0rc1--pl526he1b5a44_0
cwlVersion: v1.1
baseCommand:
- show-diff
