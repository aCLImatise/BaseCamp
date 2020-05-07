class: CommandLineTool
id: agat_sq_keep_annotation_from_fastaSeq.pl.cwl
inputs:
- id: input
  doc: 'STRING: Input GTF/GFF file.'
  type: string
  inputBinding:
    prefix: --input
- id: fast_a
  doc: 'STRING: fasta file.'
  type: string
  inputBinding:
    prefix: --fasta
- id: verbose
  doc: For verbosity
  type: string
  inputBinding:
    prefix: --verbose
- id: output
  doc: 'STRING: Output file. If no output file is specified, the output will be written
    to STDOUT. The result is in tabulate format.'
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
- agat_sq_keep_annotation_from_fastaSeq.pl
