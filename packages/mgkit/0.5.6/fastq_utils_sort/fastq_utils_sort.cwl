class: CommandLineTool
id: fastq_utils_sort.cwl
inputs:
- id: in_mate_one_input
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_mate_two_input
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_mate_one_output
  doc: ''
  type: long
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0
cwlVersion: v1.1
baseCommand:
- fastq-utils
- sort
