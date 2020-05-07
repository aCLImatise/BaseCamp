class: CommandLineTool
id: gaas_fasta_bionano_filter_not_scaffolded_part.pl.cwl
inputs:
- id: my_script_pl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fasta1
  doc: Fasta file 1. The headers of sequences of this file will be used to compare
    against those to file 2.
  type: string
  inputBinding:
    prefix: --fasta1
- id: agp
  doc: This is a file containing the headers of sequence to be removed. Only one ID
    per line. Header should be identical at 100% to be removed.
  type: string
  inputBinding:
    prefix: --agp
- id: o
  doc: ', --output , --out or --outfile Output fasta file. If no output file is specified,
    the output will be written to STDOUT.'
  type: boolean
  inputBinding:
    prefix: -o
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
- gaas_fasta_bionano_filter_not_scaffolded_part.pl
