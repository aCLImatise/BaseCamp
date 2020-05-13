class: CommandLineTool
id: agat_sp_clipN_seqExtremities_and_fixCoordinates.pl.cwl
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
- id: a
  doc: description,
  type: string
  inputBinding:
    prefix: '- a'
- id: as
  doc: relevant information as possible,
  type: string
  inputBinding:
    prefix: '- as'
- id: the
  doc: used,
  type: string
  inputBinding:
    prefix: '- the'
- id: a
  doc: sample,
  type: string
  inputBinding:
    prefix: '- a'
- id: an
  doc: of the expected behaviour that is not occurring.
  type: string
  inputBinding:
    prefix: '- an'
outputs: []
cwlVersion: v1.1
baseCommand:
- agat_sp_clipN_seqExtremities_and_fixCoordinates.pl
