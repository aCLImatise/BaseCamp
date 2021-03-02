class: CommandLineTool
id: datafunk_repair_names.cwl
inputs:
- id: in_out
  doc: ''
  type: string?
  inputBinding:
    prefix: --out
- id: in_tree
  doc: ''
  type: string?
  inputBinding:
    prefix: --tree
- id: in_fast_a
  doc: ''
  type: string?
  inputBinding:
    prefix: --fasta
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/datafunk:0.0.8--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- datafunk
- repair_names
