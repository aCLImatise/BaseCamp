class: CommandLineTool
id: linguistic_sequence_complexity.py.cwl
inputs:
- id: in_sequence
  doc: 'GCTA sequences (default: None)'
  type: string?
  inputBinding:
    prefix: --sequence
- id: in_substring_length
  doc: "sub-lenght up to... (default: None)\n"
  type: long?
  inputBinding:
    prefix: --substring-length
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/somaticseq:3.6.2--py_0
cwlVersion: v1.1
baseCommand:
- linguistic_sequence_complexity.py
