class: CommandLineTool
id: bp_seq_length.pl.cwl
inputs:
- id: in_format
  doc: "- Specify the database format ('fasta' is default).\nThis script uses SeqIO\
    \ and as such formats are\nlimited to those which SeqIO system supports."
  type: boolean?
  inputBinding:
    prefix: --format
- id: in_bioperl_lat_bioperl_dot_org
  doc: '- General discussion'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bp_seq_length.pl
