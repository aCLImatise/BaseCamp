class: CommandLineTool
id: merqury.sh.cwl
inputs:
- id: in_read_db_dot_meryl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_mat_dot_meryl
  doc: ''
  type: string?
  inputBinding:
    position: 1
- id: in_pat_dot_meryl
  doc: ''
  type: string?
  inputBinding:
    position: 2
- id: in_asm_one_dot_fast_a
  doc: ''
  type: long
  inputBinding:
    position: 3
- id: in_asm_two_dot_fast_a
  doc: ''
  type: long?
  inputBinding:
    position: 4
- id: in_out
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/merqury:1.1--0
cwlVersion: v1.1
baseCommand:
- merqury.sh
