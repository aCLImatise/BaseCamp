class: CommandLineTool
id: fasta_nr.cwl
inputs:
- id: in_omit_sequence_is
  doc: omit any sequence that is a shorter substring of another
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_seqs_dot_fast_a
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
  dockerPull: quay.io/biocontainers/last:1219--h2e03b76_0
cwlVersion: v1.1
baseCommand:
- fasta-nr
