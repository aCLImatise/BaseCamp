class: CommandLineTool
id: gaas_fasta_filter_by_size.pl.cwl
inputs:
- id: gaas_fast_a_filer_by_size_pl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fast_a
  doc: Input fasta file.
  type: string
  inputBinding:
    prefix: --fasta
- id: size
  doc: Integer corresponding to a size in bp. Default value 1000. Sequence under the
    value will be discarded from the output.
  type: boolean
  inputBinding:
    prefix: --size
- id: output
  doc: Output fasta file. If no output file is specified, the output will be written
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
- gaas_fasta_filter_by_size.pl
