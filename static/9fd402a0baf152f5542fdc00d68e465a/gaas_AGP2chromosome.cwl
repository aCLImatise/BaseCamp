class: CommandLineTool
id: ../../../gaas_AGP2chromosome.pl.cwl
inputs:
- id: agp
  doc: Input AGP file
  type: string
  inputBinding:
    prefix: --agp
- id: fast_a
  doc: Input fasta file.
  type: string
  inputBinding:
    prefix: --fasta
- id: output
  doc: Output GFF file. If no output file is specified, the output will be written
    to STDOUT.
  type: string
  inputBinding:
    prefix: --output
- id: g
  doc: ''
  type: string
  inputBinding:
    prefix: -g
outputs: []
cwlVersion: v1.1
baseCommand:
- gaas_AGP2chromosome.pl
