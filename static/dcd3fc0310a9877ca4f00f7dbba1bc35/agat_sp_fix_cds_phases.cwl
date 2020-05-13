class: CommandLineTool
id: agat_sp_fix_cds_phases.pl.cwl
inputs:
- id: agat_sp_fix_cds_frame_pl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: gff
  doc: Input GTF/GFF file.
  type: string
  inputBinding:
    prefix: --gff
- id: fast_a
  doc: Genome fasta file.
  type: string
  inputBinding:
    prefix: --fasta
- id: codon
  doc: Codon table to use. 0 By default.
  type: string
  inputBinding:
    prefix: --codon
- id: verbose
  doc: Add verbosity.
  type: string
  inputBinding:
    prefix: --verbose
- id: output
  doc: Output GFF file. If no output file is specified, the output will be written
    to STDOUT.
  type: string
  inputBinding:
    prefix: --output
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
- agat_sp_fix_cds_phases.pl
