class: CommandLineTool
id: gaas_fasta_extract_sequence_from_id.pl.cwl
inputs:
- id: fast_a
  doc: Input fasta file.
  type: string
  inputBinding:
    prefix: --fasta
- id: name
  doc: Could be a sequence name to retrieve in the fasta file, or a file containing
    a list of sequence name (one by line).
  type: boolean
  inputBinding:
    prefix: --name
- id: line
  doc: Integer, number of line to avoid. Allow to avoid headers.
  type: boolean
  inputBinding:
    prefix: --line
- id: col
  doc: column containing the ID. By default the first column is considered.
  type: boolean
  inputBinding:
    prefix: --col
- id: q
  doc: Field separator, by default un-printable character are use as separator (\s).
    You can define the one you wnat with this option.
  type: boolean
  inputBinding:
    prefix: -q
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
- gaas_fasta_extract_sequence_from_id.pl
