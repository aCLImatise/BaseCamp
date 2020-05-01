#!/usr/bin/env cwl-runner

baseCommand:
- gaas_bed_create_random_feature.pl
class: CommandLineTool
cwlVersion: v1.0
id: gaas_bed_create_random_feature.pl
inputs:
- doc: ''
  id: gaas_create_random_feature_pl
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: '10000'
  inputBinding:
    position: 1
  type: string
- doc: 'STRING: Name to use for writing in first column of the bed file. default chr_unknown.'
  id: genome
  inputBinding:
    prefix: --genome
  type: string
- doc: 'INTEGER: Genome size. It define the range where features will be created.'
  id: size
  inputBinding:
    prefix: --size
  type: boolean
- doc: 'INTEGER: Number of gene. It define the number of gene features to be created.'
  id: number_gene
  inputBinding:
    prefix: --number_gene
  type: boolean
- doc: 'INTEGER: Size of genes. It define the size oft the gene features to be created.'
  id: size_gene
  inputBinding:
    prefix: --size_gene
  type: boolean
- doc: 'STRING: Output file. If no output file is specified, the output will be written
    to STDOUT. The result is in tabulate format.'
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: description,
  id: a
  inputBinding:
    prefix: '- a'
  type: string
- doc: relevant information as possible,
  id: as
  inputBinding:
    prefix: '- as'
  type: string
- doc: used,
  id: the
  inputBinding:
    prefix: '- the'
  type: string
- doc: sample,
  id: a
  inputBinding:
    prefix: '- a'
  type: string
- doc: of the expected behaviour that is not occurring.
  id: an
  inputBinding:
    prefix: '- an'
  type: string
