class: CommandLineTool
id: gaas_fasta_statistics.pl.cwl
inputs:
- id: in_file
  doc: Input fasta file containing DNA sequences.
  type: string
  inputBinding:
    prefix: --infile
- id: output
  doc: '[OPTIONAL] Output directory where diffrent output files will be written. If
    no output is specified, the result will written to STDOUT.'
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- gaas_fasta_statistics.pl
