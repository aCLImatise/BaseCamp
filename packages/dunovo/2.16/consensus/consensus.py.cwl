class: CommandLineTool
id: consensus.py.cwl
inputs:
- id: in_alignment
  doc: "The aligned sequences, in FASTA format (but no multi-line\nsequences)."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dunovo:2.16--py39h38f01e4_0
cwlVersion: v1.1
baseCommand:
- consensus.py
