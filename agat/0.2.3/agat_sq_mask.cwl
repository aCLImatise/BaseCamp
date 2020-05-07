class: CommandLineTool
id: agat_sq_mask.pl.cwl
inputs:
- id: gff
  doc: Input GTF/GFF file.
  type: string
  inputBinding:
    prefix: --gff
- id: fast_a
  doc: Input fasta file that will be masked
  type: string
  inputBinding:
    prefix: --fasta
- id: sm
  doc: SoftMask option =>Sequences masked will be in lowercase
  type: boolean
  inputBinding:
    prefix: -sm
- id: hm
  doc: "HardMask option => Sequences masked will be replaced by a character. By default\
    \ the character used is 'n'. But you are allowed to speceify any character of\
    \ your choice. To use 'z' instead of 'n' type: -hm z"
  type: boolean
  inputBinding:
    prefix: -hm
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
- agat_sq_mask.pl
