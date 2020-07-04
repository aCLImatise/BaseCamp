class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bp_seq_length.pl.cwl
inputs:
- id: f_slash_format
  doc: "- Specify the database format ('fasta' is default). This script uses SeqIO\
    \ and as such formats are  limited to those which SeqIO system supports."
  type: boolean
  inputBinding:
    prefix: -f/--format
outputs: []
cwlVersion: v1.1
baseCommand:
- bp_seq_length.pl
