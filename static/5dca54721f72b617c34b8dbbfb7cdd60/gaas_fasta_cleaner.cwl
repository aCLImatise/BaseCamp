class: CommandLineTool
id: gaas_fasta_cleaner.pl.cwl
inputs:
- id: fast_a
  doc: Input fasta file.
  type: string
  inputBinding:
    prefix: --fasta
- id: v
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
- gaas_fasta_cleaner.pl
