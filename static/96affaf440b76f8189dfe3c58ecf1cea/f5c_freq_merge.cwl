class: CommandLineTool
id: f5c_freq_merge.cwl
inputs:
- id: in_output_file_write
  doc: output file. Write to stdout if not specified
  type: File?
  inputBinding:
    prefix: -o
- id: in_merge
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_multiple
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_methylation
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_frequency
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_files
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_into
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_one_dot
  doc: ''
  type: string
  inputBinding:
    position: 6
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
- freq-merge
