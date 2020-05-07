class: CommandLineTool
id: agat_sq_rfam_analyzer.pl.cwl
inputs:
- id: input
  doc: 'STRING: Input GTF/GFF file(s). Several files can be processed at once: -i
    file1 -i file2'
  type: string
  inputBinding:
    prefix: --input
- id: genome
  doc: That input is design to know the genome size in order to calculate the percentage
    of the genome represented by each kind of rfam-id. You can provide an INTEGER
    or the genome in fasta format. If you provide the fasta, the genome size will
    be calculated on the fly.
  type: boolean
  inputBinding:
    prefix: --genome
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
- agat_sq_rfam_analyzer.pl
