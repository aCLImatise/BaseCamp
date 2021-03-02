class: CommandLineTool
id: fasta_select_by_keyword.py.cwl
inputs:
- id: in_input
  doc: database file input
  type: File?
  inputBinding:
    prefix: --input
- id: in_output
  doc: filtered fasta output
  type: string?
  inputBinding:
    prefix: --output
- id: in_keyword
  doc: "filter records to include keyword\n"
  type: string?
  inputBinding:
    prefix: --keyword
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/constax:2.0.6--0
cwlVersion: v1.1
baseCommand:
- fasta_select_by_keyword.py
