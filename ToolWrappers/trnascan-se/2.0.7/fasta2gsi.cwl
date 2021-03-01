class: CommandLineTool
id: fasta2gsi.cwl
inputs:
- id: in_help_dot_gsi
  doc: 0 sequence names.
  type: long?
  inputBinding:
    prefix: --help.gsi
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/trnascan-se:2.0.7--pl526h516909a_0
cwlVersion: v1.1
baseCommand:
- fasta2gsi
