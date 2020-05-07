class: CommandLineTool
id: gaas_fasta_removeFromFasta1_intersection_withFasta2ID.pl.cwl
inputs:
- id: perl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: my_script_pl
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: fasta1
  doc: Fasta file 1. The headers of sequences of this file will be used to compare
    against those to file 2.
  type: string
  inputBinding:
    prefix: --fasta1
- id: fasta2
  doc: Fasta file 2. This is the "reference file" in which we will remove sequences
    already existing in file 1.
  type: string
  inputBinding:
    prefix: --fasta2
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
- gaas_fasta_removeFromFasta1_intersection_withFasta2ID.pl
