class: CommandLineTool
id: fastq_utils_di.cwl
inputs:
- id: in_verbose
  doc: Strip additional info
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_fast_q_file
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_mate_one_file
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_mate_two_file
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
- di
