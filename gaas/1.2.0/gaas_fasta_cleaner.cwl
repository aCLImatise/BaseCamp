class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/gaas_fasta_cleaner.pl.cwl
inputs:
- id: fast_a
  doc: Input fasta file.
  type: string
  inputBinding:
    prefix: --fasta
- id: add_verbosity
  doc: Add verbosity
  type: boolean
  inputBinding:
    prefix: -v
- id: outfile
  doc: Output fasta file. If no output file is specified, the output will be written
    to STDOUT.
  type: string
  inputBinding:
    prefix: --outfile
outputs: []
cwlVersion: v1.1
baseCommand:
- gaas_fasta_cleaner.pl
