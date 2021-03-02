class: CommandLineTool
id: interleave_fastqgz_MITOBIM.py.cwl
inputs:
- id: in_interleave_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_fast_a_file_one
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mitobim:1.9.1--0
cwlVersion: v1.1
baseCommand:
- interleave-fastqgz-MITOBIM.py
