class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/agat_sp_clipN_seqExtremities_and_fixCoordinates.pl.cwl
inputs:
- id: gff
  doc: Input GTF/GFF file.
  type: string
  inputBinding:
    prefix: --gff
- id: fast_a
  doc: Input fasta file.
  type: string
  inputBinding:
    prefix: --fasta
- id: of
  doc: Output fixed fasta file. If no output file is specified, the output will be
    written to STDOUT.
  type: boolean
  inputBinding:
    prefix: --of
- id: og
  doc: Output fixed GFF file. If no output file is specified, the output will be written
    to STDOUT
  type: boolean
  inputBinding:
    prefix: --og
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- agat_sp_clipN_seqExtremities_and_fixCoordinates.pl
