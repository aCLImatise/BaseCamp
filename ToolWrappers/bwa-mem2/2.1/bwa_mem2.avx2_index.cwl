class: CommandLineTool
id: bwa_mem2.avx2_index.cwl
inputs:
- id: in_p
  doc: ''
  type: string?
  inputBinding:
    prefix: -p
- id: in_in_dot_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bwa-mem2:2.1--he513fc3_0
cwlVersion: v1.1
baseCommand:
- bwa-mem2.avx2
- index
