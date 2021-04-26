class: CommandLineTool
id: get_pair_reads.py.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/getorganelle:1.7.4.1--pyh5e36f6f_0
cwlVersion: v1.1
baseCommand:
- get_pair_reads.py
