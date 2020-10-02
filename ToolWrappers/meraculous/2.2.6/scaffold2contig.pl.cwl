class: CommandLineTool
id: scaffold2contig.pl.cwl
inputs:
- id: in_scaffold_seq_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- scaffold2contig.pl
