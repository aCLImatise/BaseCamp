class: CommandLineTool
id: rbt_sequence_stats.cwl
inputs:
- id: in_fast_q
  doc: Flag to indicate the sequence in stdin is in fastq format.
  type: boolean?
  inputBinding:
    prefix: --fastq
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/rust-bio-tools:0.20.2--heda7bfa_0
cwlVersion: v1.1
baseCommand:
- rbt
- sequence-stats
