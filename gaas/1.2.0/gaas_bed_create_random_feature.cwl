class: CommandLineTool
id: ../../../gaas_bed_create_random_feature.pl.cwl
inputs:
- id: genome
  doc: 'STRING: Name to use for writing in first column of the bed file. default chr_unknown.'
  type: string
  inputBinding:
    prefix: --genome
- id: size
  doc: 'INTEGER: Genome size. It define the range where features will be created.'
  type: boolean
  inputBinding:
    prefix: --size
- id: number_gene
  doc: 'INTEGER: Number of gene. It define the number of gene features to be created.'
  type: boolean
  inputBinding:
    prefix: --number_gene
- id: size_gene
  doc: 'INTEGER: Size of genes. It define the size oft the gene features to be created.'
  type: boolean
  inputBinding:
    prefix: --size_gene
- id: output
  doc: 'STRING: Output file. If no output file is specified, the output will be written
    to STDOUT. The result is in tabulate format.'
  type: string
  inputBinding:
    prefix: --output
- id: gaas_create_random_feature_do_tpl
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- gaas_bed_create_random_feature.pl
