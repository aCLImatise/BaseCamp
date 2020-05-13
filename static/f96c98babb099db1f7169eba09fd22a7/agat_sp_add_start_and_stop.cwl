class: CommandLineTool
id: agat_sp_add_start_and_stop.pl.cwl
inputs:
- id: agat_sp_add_start_and_stop_pl_pl
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
  doc: Input fasta file. Needed to check that CDS sequences start by start codon and
    stop by stop codon.
  type: string
  inputBinding:
    prefix: --fasta
- id: codon
  doc: Codon table to use. 1 By default.
  type: string
  inputBinding:
    prefix: --codon
- id: output
  doc: Output gff file updated
  type: string
  inputBinding:
    prefix: --output
- id: v
  doc: Verbose for debugging purpose.
  type: boolean
  inputBinding:
    prefix: -v
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
- agat_sp_add_start_and_stop.pl
