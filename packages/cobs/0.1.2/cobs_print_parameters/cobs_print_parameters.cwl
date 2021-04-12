class: CommandLineTool
id: cobs_print_parameters.cwl
inputs:
- id: in_false_positive_rate
  doc: 'false positive rate, default: 0.3'
  type: boolean?
  inputBinding:
    prefix: --false-positive-rate
- id: in_num_elements
  doc: number of elements to be inserted into the index
  type: boolean?
  inputBinding:
    prefix: --num-elements
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cobs:0.1.2--py39h56fc30b_0
cwlVersion: v1.1
baseCommand:
- cobs
- print-parameters
