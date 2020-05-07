class: CommandLineTool
id: agat_sq_stat_basic.pl.cwl
inputs:
- id: input
  doc: 'STRING: Input GTF/GFF file. Several files can be processed at once: -i file1
    -i file2'
  type: string
  inputBinding:
    prefix: --input
- id: genome
  doc: That input is design to know the genome size in order to calculate the percentage
    of the genome represented by each kind of feature type. You can provide an INTEGER
    or the genome in fasta format. If you provide the fasta, the genome size will
    be calculated on the fly.
  type: boolean
  inputBinding:
    prefix: --genome
- id: inflate
  doc: 'Inflate the statistics taking into account feature with multi-parents. Indeed
    to avoid redundant information, some gff factorize identical features. e.g: one
    exon used in two different isoform will be defined only once, and will have multiple
    parent. By default the script count such feature only once. Using the inflate
    option allows to count the feature and its size as many time there are parents.'
  type: boolean
  inputBinding:
    prefix: --inflate
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
- agat_sq_stat_basic.pl
