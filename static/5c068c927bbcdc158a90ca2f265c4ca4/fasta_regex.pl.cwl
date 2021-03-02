class: CommandLineTool
id: fasta_regex.pl.cwl
inputs:
- id: in_name
  doc: ''
  type: string?
  inputBinding:
    prefix: --name
- id: in_fa
  doc: ''
  type: File?
  inputBinding:
    prefix: --fa
- id: in_motif
  doc: ''
  type: string?
  inputBinding:
    prefix: --motif
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fasta_regex.pl
