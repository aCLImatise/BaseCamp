class: CommandLineTool
id: f5c_meth_freq.cwl
inputs:
- id: in_call_threshold_log
  doc: call threshold for the log likelihood ratio. Default is 2.5.
  type: double?
  inputBinding:
    prefix: -c
- id: in_input_file_read
  doc: input file. Read from stdin if not specified
  type: File?
  inputBinding:
    prefix: -i
- id: in_output_file_write
  doc: output file. Write to stdout if not specified
  type: File?
  inputBinding:
    prefix: -o
- id: in_split_groups
  doc: split groups
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_meth_freq
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_write
  doc: output file. Write to stdout if not specified
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_write)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/f5c:0.6--h8b6279f_0
cwlVersion: v1.1
baseCommand:
- f5c
- meth-freq
