class: CommandLineTool
id: trimmer.py_reads.filt_1.fq.cwl
inputs:
- id: in_trimmer_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input_one_dot_fq
  doc: ''
  type: long?
  inputBinding:
    position: 1
- id: in_input_two_dot_fq
  doc: ''
  type: long?
  inputBinding:
    position: 2
- id: in_output_one_dot_fq
  doc: ''
  type: long?
  inputBinding:
    position: 3
- id: in_output_two_dot_fq
  doc: ''
  type: long?
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dunovo:2.16--py39h38f01e4_0
cwlVersion: v1.1
baseCommand:
- trimmer.py
- reads.filt_1.fq
