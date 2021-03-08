class: CommandLineTool
id: coverm_shell_completion_FLAGS.cwl
inputs:
- id: in_output_file
  doc: ''
  type: File?
  inputBinding:
    prefix: --output-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: ''
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/coverm:0.6.1--hc216eb9_0
cwlVersion: v1.1
baseCommand:
- coverm
- shell-completion
- FLAGS
