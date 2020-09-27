class: CommandLineTool
id: fasta2gsi.pl.cwl
inputs:
- id: in_help_dot_gsi
  doc: 0 sequence names.
  type: long
  inputBinding:
    prefix: --help.gsi
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fasta2gsi.pl
