class: CommandLineTool
id: agat_sp_functional_statistics.pl.cwl
inputs:
- id: gff
  doc: Input GTF/GFF file.
  type: string
  inputBinding:
    prefix: --gff
- id: gs
  doc: This option inform about the genome size in oder to compute more statistics.
    You can give the size in Nucleotide or directly the fasta file.
  type: string
  inputBinding:
    prefix: --gs
- id: output
  doc: File where will be written the result. If no output file is specified, the
    output will be written to STDOUT.
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
- agat_sp_functional_statistics.pl
