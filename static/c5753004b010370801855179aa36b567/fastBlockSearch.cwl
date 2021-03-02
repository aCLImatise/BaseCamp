class: CommandLineTool
id: fastBlockSearch.cwl
inputs:
- id: in_fast_blocks_search
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_seqs_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_fam_dot_pr_fl
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0
cwlVersion: v1.1
baseCommand:
- fastBlockSearch
